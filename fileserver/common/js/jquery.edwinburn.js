(function($) {                                          // Compliant with jquery.noConflict()
$.fn.edwinburn = function(options) {
	var defaults={
		width:876,
		height:300,
		effectStyle:"kenburn",
		thumbWidth:90,
		thumbHeight:50,
		thumbAmount:6,
		thumbSpaces:4,
		thumbPadding:4,
		thumbStyle:"bullet",
		bulletXOffset:0,
		bulletYOffset:0,
		shadow:'true',
		timer:2000,
		touchenabled:"on",
		pauseOnRollOverThumbs:'off',
		pauseOnRollOverMain:'on',
		preloadedSlides:50,
		debug:"no"
	};
    options=$.extend({},$.fn.edwinburn.defaults,options);
	
	var top_container=$(this);
	var opt=options;
	opt.padtop = 0;
    opt.padleft = 0;
    opt.padright = 0;
    opt.padbottom = 0;
    opt.bordertop = 0;
    opt.borderleft = 0;
    opt.borderright = 0;
    opt.borderbottom = 0;
	
	top_container.css({
	  'width': opt.width + "px",
	  'height': opt.height + "px"
	});
	
	top_container.append('<div class="kenburn-preloader"></div>');
	prepareSlidesContainer(top_container, opt);
	
	 top_container.find('ul').wrap('<div class="slide_mainmask" style="z-index:10;position:absolute;top:' + (opt.padtop) + 'px;left:' + (opt.padleft) + 'px;width:' + opt.width + 'px;height:' + opt.height + 'px;overflow:hidden"></div>');
	 
	 
	
	top_container.find("ul li").css({position: 'absolute', left: '0px', top : '0px', width: opt.width+'px', height: opt.height+'px', overflow: 'hidden' , opacity: 0.0, display: 'none'});
	
	opt.maxitem = 0;
    top_container.find('ul >li').each(function (i) {
      opt.maxitem = opt.maxitem + 1;
	  $(this).find('.creative_layer').wrap('<div class="layer_container" style="position:absolute;left:0px;top:0px;width:' + opt.width + 'px;height:' + opt.height + 'px"></div>');
	  $(this).find('.creative_layer').css({position:'absolute', width: '100%', height:'100%' });
	  $(this).find('.creative_layer div').css({position:'absolute'});
    });
	
	top_container.find('img.blur').wrap('<div class="imageblur_container" style="z-index:10;position:absolute;top:' + (opt.padtop + 1) + 'px;left:' + (opt.padleft + 1) + 'px;width:' + opt.width + 'px;height:' + opt.height + 'px;overflow:hidden"></div>');

	opt.loadedImages = 0;
	top_container.waitForImages(function () {
		var imageloaded = new Array();
		var imageindex = -1;
		top_container.find('img').each(function(){
			var screenImage = $(this);
			var sour = new Image();
			sour.src = screenImage.attr("src");
			imageindex += 1;
			imageloaded.push(sour);
		});
		var waitForWF = setInterval(function () {
            var flag = true;
			for(i=0;i<=imageindex;i++)
			{
				if(imageloaded[i].width <= 0)
				{
					flag = false;
				}
			}
			if(flag == true)
			{
				imageindex = -1;
				top_container.find('img').each(function(){
					imageindex += 1;
					var oldW = imageloaded[imageindex].width;
					var oldH = imageloaded[imageindex].height;
					var factor;
					if (oldW != 0) {
						if(oldW > 0 && oldW < opt.width)
						{
							factor = opt.width / oldW;
							oldW = oldW * factor;
							oldH = oldH * factor;
						}
						else if(oldW > 0 && oldW > opt.width)
						{
							factor = oldW / opt.width;
							oldW = oldW * factor;
							oldH = oldH * factor;
						}
						
						if(oldH > 0 && oldH < opt.height)
						{
							factor = opt.height / oldH;
							oldW = oldW * factor;
							oldH = oldH * factor;
						}
						
						$(this).data('ww', oldW);
						$(this).data('hh', oldH);
					}
					
				});
				clearInterval(waitForWF);
				startBanner(top_container, opt);
			}
         }, 10);
	  //startBanner(top_container, opt);
	  	
	}, function () {
	  //$('body').find('.khinfo').html(opt.loadedImages + '. Image has been Loaded');
	  opt.loadedImages = opt.loadedImages + 1;
	});
	
	function startBanner(top_container, opt)
	{
		top_container.find('.kenburn-preloader').animate({
        	'opacity': '0.0'
		  }, {
			duration: 300,
			queue: false
		  });
		top_container.find('.kenburn-bg').hide();
		if (opt.thumbStyle == "bullet" || opt.thumbStyle == "both") createBullets(top_container, opt);

	  	swapBanner(null, top_container.find("ul li:first"), top_container, opt);	
	}

	
	var edwin_timer;
	function swapBanner($currentitem, $item, $top_container, $opt)
	{
		if($currentitem != null)
		{
			$currentitem.css({display: 'block', opacity: 1.0})
				.animate({opacity: 0.0}, 1500, function() {
					$currentitem.removeClass('active last-active');
				});
		}
		$item.css({display: 'block', opacity: 0.0})
			.addClass('active')
			.animate({opacity: 1.0}, 1500, function() {
				$item.removeClass('active last-active');
			});
			
		$item.find('img.main').clearQueue();
		$item.find('img.blur').clearQueue();
		clearTimeout(edwin_timer);
		
		//Ẩn tất cả các li đang chạy để hiện li đang xét
		
		$top_container.find('ul >li').each(function (i) {
			var $this = $(this);
			if($currentitem != null)
			{
				if ($this.index() != $item.index() && $this.index() != $currentitem.index()) {
					$this.css({
						'display': 'none',
						'position': 'absolute',
						'left': '0px',
						'z-index': '994'
					});
				}
			}
		});
		
		var $nextitem =  $item.next().length ? $item.next()
			: $top_container.find('ul li:first');
	
		//Hinh
		var zoomfact = ($item.data('zoomfact')/10)+1;
		var $img_main = $item.find('img.main');
		var $img_blur = $item.find('img.blur');
		
		var oldW = 0;
		var oldH = 0;
		var newW = 0;
		var newH = 0;
		
		if ($img_main.data('ww') == undefined) {
			//Lay chieu cao, rong cua hinh
			
			var screenImage = $img_main;
			var sour = new Image();
			sour.src = screenImage.attr("src");
			oldW = sour.width;
			oldH = sour.height;
			newW = 0;
			newH = 0;
			
			var factor;
			if (oldW != 0) {
				if(oldW > 0 && oldW < opt.width)
				{
					factor = opt.width / oldW;
					oldW = oldW * factor;
					oldH = oldH * factor;
				}
				else if(oldW > 0 && oldW > opt.width)
				{
					factor = oldW / opt.width;
					oldW = oldW * factor;
					oldH = oldH * factor;
				}
				
				if(oldH > 0 && oldH < opt.height)
				{
					factor = opt.height / oldH;
					oldW = oldW * factor;
					oldH = oldH * factor;
				}
				
				$img_main.data('ww', oldW);
				$img_main.data('hh', oldH);
			}
			
		} else {
			oldW = $img_main.data('ww');			
			oldH = $img_main.data('hh');
		}
		
		newW = oldW * zoomfact;
		newH = oldH * zoomfact;
		
		var startalign = $item.data('startalign').split(",");
		var endalign = $item.data('endalign').split(",");
		var startLeft = 0;
		var startTop = 0;
		var endLeft = 0;
		var endTop = 0;
		
		switch(startalign[0])
		{
			case "left":
				startLeft = 0;
			break;
			
			case "right":
				startLeft = opt.width - oldW;
			break;
			
			case "center":
				startLeft = (opt.width - oldW)/2;
			break;	
		}
		
		switch(startalign[1])
		{
			case "top":
				startTop = 0;
			break;
			
			case "bottom":
				startTop = opt.height - oldH;
			break;
			
			case "center":
				startTop = (opt.height - oldH)/2;
			break;	
		}
		
		
		switch(endalign[0])
		{
			case "left":
				endLeft = 0;
			break;
			
			case "right":
				endLeft = opt.width - newW;
			break;
			
			case "center":
				endLeft = (opt.width - newW)/2;
			break;	
		}
		
		switch(endalign[1])
		{
			case "top":
				endTop = 0;
			break;
			
			case "bottom":
				endTop = opt.height - newH;
			break;
			
			case "center":
				endTop = (opt.height - newH)/2;
			break;	
		}
	
		
		var transition = $item.data('transition');
		
		var zoom = $item.data('zoom');
		var panduration = $item.data('panduration') * 1000;
		var colortransition = $item.data('colortransition') * 1000;

		if(opt.effectStyle == 'kenburn')
		{
			$item.find('img.main').css({width: oldW+'px', position: 'absolute', left: startLeft+'px', top: startTop+'px', opacity: 1.0, zindex:90})
					.animate({width: newW+'px', left: endLeft+'px', top: endTop+'px', opacity: 1.0}, panduration)
					.animate({width: (newW*2)+'px'}, opt.timer * 1000);
					
			$item.find('img.blur').css({width: oldW+'px', position: 'absolute', left: startLeft+'px', top: startTop+'px', zindex:90})
					.animate({width: newW+'px', left: endLeft+'px', top: endTop+'px'}, panduration);
			
			$item.find('.imageblur_container').css({opacity: 1.0})
				.animate({opacity: 0.0}, colortransition);
		}
		else if(opt.effectStyle == 'fade')
		{
			$item.find('img.main').css({width: oldW+'px', position: 'absolute'});	
		}
	
		
		
				
		
			
		if ($top_container.find('.minithumb').length > 0) {
		  var thumb = $top_container.find('#minithumb' + $item.index());
		  $top_container.find('.minithumb').removeClass('selected');
		  thumb.addClass('selected');
		  if (opt.thumbStyle != "both") $top_container.data('currentThumb', thumb);
		}
			
		$top_container.data('currentSlide', $item);
		
		textanim($item, 100, $top_container);
		
		edwin_timer = setTimeout(function(){
			swapBanner($item, $nextitem, $top_container, $opt);	
		}, opt.timer * 1000 );
		
	}
	
	function prepareSlidesContainer(top,opt){
		top.append('<div class="kenburn-bg" style="z-index:7;position:absolute;top:0px;left:0px;width:'+opt.width+'px;height:'+opt.height+'px;overflow:hidden"></div>');
		var bg=top.find('.kenburn-bg');
	}
	
	function createBullets(top, opt) {
		var maxitem = top.find('ul >li').length;
		var full = opt.width + opt.padleft + opt.padright;
		top.append('<div class="thumbbuttons"><div class="grainme"><div class="leftarrow"></div><div class="thumbs"></div><div class="rightarrow"></div></div></div>');
		var leftb = top.find('.leftarrow');
		var rightb = top.find('.rightarrow');
		rightb.click(function () {
		  var newitem = top.data('currentSlide');
		  if (newitem.index() < opt.maxitem - 1) {
			var next = top.find('ul li:eq(' + (newitem.index() + 1) + ')');
		  } else {
			var next = top.find('ul li:first');
		  }
		  swapBanner(newitem, next, top, opt);
		});
		leftb.click(function () {
		  var newitem = top.data('currentSlide');
		  if (newitem.index() > 0) {
			var next = top.find('ul li:eq(' + (newitem.index() - 1) + ')');
		  } else {
			var next = top.find('ul li:eq(' + (opt.maxitem - 1) + ')');
		  }
		  swapBanner(newitem, next, top, opt);
		});
		var minithumbs = top.find('.thumbs');
		top.find('ul >li').each(function (i) {
		  var $this = $(this);
		  var thumb_mini = $('<div class="minithumb" id="minithumb' + i + '"></div>');
		  thumb_mini.data('id', i);
		  minithumbs.append(thumb_mini);
		  thumb_mini.click(function () {
			var $this = $(this);
			if (!$this.hasClass("selected")) {
			  var newslide = top.find('ul li:eq(' + $this.data('id') + ')');
			  swapBanner(top.data('currentSlide'), newslide, top, opt);
			}
		  });
		});
		minithumbs.waitForImages(function () {
		  var tp = parseInt(minithumbs.parent().parent().position().top, 0);
		  minithumbs.parent().parent().css({
			'top': (tp + opt.bulletYOffset) + "px",
			'left': ((full / 2 - parseInt(minithumbs.parent().width(), 0) / 2) + opt.bulletXOffset) + "px"
		  });
		});
	}
	
	function textanim(item, edelay, slider_container) {
		var counter = 2;
		item.find('.creative_layer div').each(function (i) {
		  var $this = $(this);
	
		  if ($this.data('_top') == undefined) $this.data('_top', parseInt($this.css('top'), 0));
	
		  if ($this.data('_bottom') == undefined) $this.data('_bottom', parseInt($this.css('bottom'), 0));
	
		  if ($this.data('_left') == undefined) $this.data('_left', parseInt($this.css('left'), 0));
	
		  if ($this.data('_right') == undefined) $this.data('_right', parseInt($this.css('right'), 0));
	
		  if ($this.data('_op') == undefined) {
			$this.data('_op', $this.css('opacity'));
			if ($this.data('_right') == undefined) $this.data('_right', parseInt($this.css('right'), 0));
		  }
		  $this.css({
			'z-index': 1200
		  });
	
		  if ($this.hasClass('fadeup')) {
			$this.animate({
			  'top': $this.data('_top') + 20 + "px",
			  'opacity': 0
			}, {
			  duration: 0,
			  queue: false
			}).delay(edelay + (counter + 1) * 350).animate({
			  'top': $this.data('_top') + "px",
			  'opacity': $this.data('_op')
			}, {
			  duration: 500,
			  queue: true
			})
			counter++;
		  }
		  if ($this.hasClass('faderight')) {
			$this.animate({
			  'left': $this.data('_left') - 300 + "px",
			  'opacity': 0
			}, {
			  duration: 0,
			  queue: false
			}).delay(edelay + (counter + 1) * 350).animate({
			  'left': $this.data('_left') + "px",
			  'opacity': $this.data('_op')
			}, {
			  duration: 3000,
			  queue: true
			})
			counter++;
		  }
		  if ($this.hasClass('fadedown')) {
			$this.animate({
			  'top': $this.data('_top') - 20 + "px",
			  'opacity': 0
			}, {
			  duration: 0,
			  queue: false
			}).delay(edelay + (counter + 1) * 350).animate({
			  'top': $this.data('_top') + "px",
			  'opacity': $this.data('_op')
			}, {
			  duration: 500,
			  queue: true
			})
			counter++;
		  }
		  if ($this.hasClass('fadeleft')) {
			$this.animate({
			  'left': $this.data('_left') + 20 + "px",
			  'opacity': 0
			}, {
			  duration: 0,
			  queue: false
			}).delay(edelay + (counter + 1) * 350).animate({
			  'left': $this.data('_left') + "px",
			  'opacity': $this.data('_op')
			}, {
			  duration: 500,
			  queue: true
			})
			counter++;
		  }
		  //PQTUAN EDIT
		  if ($this.hasClass('slideup')) {
			$this.animate({
			  'top': $this.data('_top') + 20 + "px",
			  'opacity': 0
			}, {
			  duration: 0,
			  queue: false
			}).delay(edelay + (counter + 1) * 350).animate({
			  'top': $this.data('_top') + "px",
			  'opacity': $this.data('_op')
			}, {
			  duration: 500,
			  queue: true
			})
			counter++;
		  }
		  if ($this.hasClass('slideright')) {
			$this.animate({
			  'left': $this.data('_left') - 200 + "px",
			  'opacity': 0
			}, {
			  duration: 0,
			  queue: false
			}).delay(edelay + (counter + 1) * 350).animate({
			  'left': $this.data('_left') + "px",
			  'opacity': $this.data('_op')
			}, {
			  duration: 2000,
			  queue: true
			})
			counter++;
		  }
		  if ($this.hasClass('slidedown')) {
			$this.animate({
			  'top': $this.data('_top') - 20 + "px",
			  'opacity': 0
			}, {
			  duration: 0,
			  queue: false
			}).delay(edelay + (counter + 1) * 350).animate({
			  'top': $this.data('_top') + "px",
			  'opacity': $this.data('_op')
			}, {
			  duration: 500,
			  queue: true
			})
			counter++;
		  }
		  if ($this.hasClass('slideleft')) {
			$this.animate({
			  'left': $this.data('_left') + 400 + "px",
			  'opacity': 0
			}, {
			  duration: 0,
			  queue: false
			}).delay(edelay + (counter + 1) * 350).animate({
			  'left': $this.data('_left') + "px",
			  'opacity': $this.data('_op')
			}, {
			  duration: 2000,
			  queue: true
			})
			counter++;
		  }
		  if ($this.hasClass('flyleft')) {
			$this.animate({
			  'right': $this.data('_right') - 400 + "px",
			  'opacity': 0
			}, {
			  duration: 0,
			  queue: false
			}).delay(edelay + (counter + 1) * 350).animate({
			  'right': $this.data('_right') + "px",
			  'opacity': $this.data('_op')
			}, {
			  duration: 2000,
			  queue: true
			})
			counter++;
		  }
		  if ($this.hasClass('bottomup')) {
			$this.animate({
			  'bottom': $this.data('_bottom') - 400 + "px",
			  'opacity': 0
			}, {
			  duration: 0,
			  queue: false
			}).delay(edelay + (counter + 1) * 350).animate({
			  'bottom': $this.data('_bottom') + "px",
			  'opacity': $this.data('_op')
			}, {
			  duration: 1000,
			  queue: true
			})
			counter++;
		  }
		  if ($this.hasClass('fadeslow')) {
			$this.animate({
			  'opacity': 0
			}, {
			  duration: 0,
			  queue: false
			}).delay(edelay + (counter + 1) * 350).animate({
			  'opacity': $this.data('_op')
			}, {
			  duration: 2000,
			  queue: true
			})
			counter++;
		  }
		  //EN PQTUAN EDIT
	
		  if ($this.hasClass('fade')) {
			$this.animate({
			  'opacity': 0
			}, {
			  duration: 0,
			  queue: false
			}).delay(edelay + (counter + 1) * 350).animate({
			  'opacity': $this.data('_op')
			}, {
			  duration: 500,
			  queue: true
			})
			counter++;
		  }
		  if ($this.hasClass('wipeup') || $this.hasClass('wipedown') || $this.hasClass('wipeleft') || $this.hasClass('wiperight')) {
			$this.animate({
			  'opacity': 0
			}, {
			  duration: 0,
			  queue: false
			});
			setTimeout(function () {
			  if ($this.find('.wipermode').length == 0) {
				var actww = $this.outerWidth();
				var acthh = $this.outerHeight();
				var params = {
				  color: $this.css('backgroundColor'),
				  border: $this.css('border'),
				  borderradiusmoz: $this.css('-moz-border-radius-topleft'),
				  borderradiusweb: $this.css('-webkit-border-top-left-radius'),
				  borderradius: $this.css('borderTopLeftRadius'),
				  boxmoz: $this.css('-moz-box-shadow'),
				  boxweb: $this.css('-webkit-box-shadow'),
				  box: $this.css('box-shadow'),
				  padtop: "0px",
				  padleft: "0px",
				  paddingT: parseInt($this.css('paddingTop'), 0),
				  paddingB: parseInt($this.css('paddingBottom'), 0),
				  paddingL: parseInt($this.css('paddingLeft'), 0),
				  paddingR: parseInt($this.css('paddingRight'), 0),
				  ww: actww + 30,
				  hh: acthh + 20
				};
				$this.data('params', params);
				$this.wrapInner('<div style="position:absolute;overflow:hidden;width:' + (actww - (params.paddingL + params.paddingR)) + 'px;height:' + (acthh - (params.paddingT + params.paddingB)) + 'px;"><div class="wipermode-origin" style="top:0px;left:0px;position:absolute;width:' + actww + 'px;height:' + acthh + 'px;"></div></div>');
				$this.prepend('<div class="wipermode" style="width:' + actww + 'px;height:' + acthh + 'px;background-color:' + params.color + ';top:0px;left:0px;position:absolute;border-radius:' + params.borderradius + ';-moz-border-radius:' + params.borderradiusmoz + ';-webkit-border-radius:' + params.borderradiusweb + ';-moz-box-shadow:' + params.boxmoz + ';-webkit-box-shadow:' + params.boxweb + ';box-shadow:' + params.box + ';"></div>');
				$this.css({
				  'background': 'none'
				});
			  }
			  var params = $this.data('params');
			  $this.stop(true, true).find('.wipermode-origin')
			  $this.stop(true, true);
			  $this.find('.wipermode').stop(true, true);
			  if ($this.hasClass('wipeup')) {
				$this.find('.wipermode-origin').css({
				  'top': (-1 * params.hh) + "px",
				  'left': params.padleft
				});
				$this.find('.wipermode').css({
				  'top': (params.hh) + "px"
				});
			  } else {
				if ($this.hasClass('wipedown')) {
				  $this.find('.wipermode-origin').css({
					'top': (params.hh) + "px",
					'left': params.padleft
				  });
				  $this.find('.wipermode').css({
					'top': (-1 * params.hh) + "px"
				  });
				} else {
				  if ($this.hasClass('wipeleft')) {
					$this.find('.wipermode-origin').css({
					  'top': params.padtop,
					  'left': (-1 * params.ww) + "px"
					});
					$this.find('.wipermode').css({
					  'left': (params.ww) + "px"
					});
				  } else {
					$this.find('.wipermode-origin').css({
					  'top': params.padtop,
					  'left': (params.ww) + "px"
					});
					$this.find('.wipermode').css({
					  'left': (-1 * params.ww) + "px"
					});
				  }
				}
			  }
			  $this.animate({
				'opacity': '1.0'
			  }, {
				duration: 300,
				queue: false
			  });
			  $this.find('.wipermode-origin').animate({
				'top': params.padtop,
				'left': params.padleft
			  }, {
				duration: 500,
				easing: 'easeOutSine',
				queue: false
			  });
			  $this.find('.wipermode').animate({
				'top': '0px',
				'left': '0px'
			  }, {
				duration: 500,
				easing: 'easeOutExpo',
				queue: false
			  });
			}, (edelay + (counter + 1) * 350));
			counter++;
		  }
		  if ($this.hasClass('masklesswipeup') || $this.hasClass('masklesswipedown') || $this.hasClass('masklesswipeleft') || $this.hasClass('masklesswiperight')) {
			$this.animate({
			  'opacity': 0
			}, {
			  duration: 0,
			  queue: false
			});
			setTimeout(function () {
			  if ($this.find('.masklesswipemode').length == 0) {
				var actww = $this.outerWidth();
				var acthh = $this.outerHeight();
				var params = {
				  color: $this.css('backgroundColor'),
				  border: $this.css('border'),
				  borderradiusmoz: $this.css('-moz-border-radius-topleft'),
				  borderradiusweb: $this.css('-webkit-border-top-left-radius'),
				  borderradius: $this.css('borderTopLeftRadius'),
				  boxmoz: $this.css('-moz-box-shadow'),
				  boxweb: $this.css('-webkit-box-shadow'),
				  box: $this.css('box-shadow'),
				  padtop: $this.css('paddingTop'),
				  padleft: $this.css('paddingLeft')
				};
				$this.data('params', params);
				$this.wrapInner('<div class="masklesswipemode-origin" style="top:0px;left:0px;position:absolute;width:' + actww + 'px;height:' + acthh + 'px;"></div>');
				$this.prepend('<div class="masklesswipemode" style="width:' + actww + 'px;height:' + acthh + 'px;background-color:' + params.color + ';top:0px;left:0px;position:absolute;border-radius:' + params.borderradius + ';-moz-border-radius:' + params.borderradiusmoz + ';-webkit-border-radius:' + params.borderradiusweb + ';-moz-box-shadow:' + params.boxmoz + ';-webkit-box-shadow:' + params.boxweb + ';box-shadow:' + params.box + ';"></div>');
				$this.css({
				  'background': 'none'
				});
			  }
			  var params = $this.data('params');
			  $this.stop(true, true).find('.masklesswipemode-origin')
			  $this.stop(true, true);
			  $this.find('.masklesswipemode').stop(true, true);
			  var distance = 50;
			  if ($this.hasClass('wipeup')) {
				$this.find('.masklesswipemode-origin').css({
				  'top': (-1 * distance) + "px",
				  'left': params.padleft
				});
				$this.find('.masklesswipemode').css({
				  'top': (distance) + "px"
				});
			  } else {
				if ($this.hasClass('masklesswipedown')) {
				  $this.find('.masklesswipemode-origin').css({
					'top': (distance) + "px",
					'left': params.padleft
				  });
				  $this.find('.masklesswipemode').css({
					'top': (-1 * distance) + "px"
				  });
				} else {
				  if ($this.hasClass('masklesswipeleft')) {
					$this.find('.masklesswipemode-origin').css({
					  'top': params.padtop,
					  'left': (-1 * distance) + "px"
					});
					$this.find('.masklesswipemode').css({
					  'left': (distance) + "px"
					});
				  } else {
					$this.find('.masklesswipemode-origin').css({
					  'top': params.padtop,
					  'left': (distance) + "px"
					});
					$this.find('.masklesswipemode').css({
					  'left': (-1 * distance) + "px"
					});
				  }
				}
			  }
			  $this.animate({
				'opacity': '1.0'
			  }, {
				duration: 800,
				queue: false
			  });
			  $this.find('.masklesswipemode-origin').animate({
				'top': params.padtop,
				'left': params.padleft
			  }, {
				duration: 800,
				easing: 'easeInExpo',
				queue: false
			  });
			  $this.find('.masklesswipemode').animate({
				'top': '0px',
				'left': '0px'
			  }, {
				duration: 800,
				easing: 'easeOutExpo',
				queue: false
			  });
			}, (edelay + (counter + 1) * 350));
			counter++;
		  }
		});
	  }
	

	
};
})(jQuery);