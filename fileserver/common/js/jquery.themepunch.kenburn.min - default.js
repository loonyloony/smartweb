(function ($, undefined) {
  $.fn.extend({
    kenburn: function (options) {
      var defaults = {
        width: 876,
        height: 300,
        thumbWidth: 90,
        thumbHeight: 50,
        thumbAmount: 6,
        thumbSpaces: 4,
        thumbPadding: 4,
        thumbStyle: "bullet",
        bulletXOffset: 0,
        bulletYOffset: 0,
        shadow: 'true',
        timer: 2000,
        touchenabled: "on",
        pauseOnRollOverThumbs: 'off',
        pauseOnRollOverMain: 'off',
        preloadedSlides: 50,
        googleFonts: 'PT+Sans+Narrow:400,700',
        googleFontJS: 'http://ajax.googleapis.com/ajax/libs/webfont/1/webfont.js',
        debug: "on"
      };

      options = $.extend({}, $.fn.kenburn.defaults, options);

      WebFontConfig = {
        google: {
          families: [options.googleFonts]
        },
        active: function () {
          jQuery('body').data('googlefonts', 'loaded');
        },
        inactive: function () {
          jQuery('body').data('googlefonts', 'loaded');
        }
      };

      return this.each(function () {
        var opt = options;
        if (opt.bulletXOffset == undefined) opt.bulletXOffset = 0;
        if (opt.bulletYOffset == undefined) opt.bulletYOffset = 0;
        if (opt.googleFonts != undefined && opt.googleFonts.length > 0) {
          var wf = document.createElement('script');
          wf.src = opt.googleFontJS;
          wf.type = 'text/javascript';
          wf.async = 'true';
          var s = document.getElementsByTagName('script')[0];
          s.parentNode.insertBefore(wf, s);
          jQuery('body').data('googlefonts', 'wait');
        } else {
          jQuery('body').data('googlefonts', 'loaded');
        }
        opt.savedTimer = opt.timer;
        var top_container = $(this);
        if (opt.debug === "on") $('body').append('<div class="khinfo" style="background:#fff;color:#000;width:300px;height:250px;position:fixed;left:10px;top:10px;"></div>');
        top_container.css({
          'width': opt.width + "px",
          'height': opt.height + "px"
        });
        top_container.append('<div class="kenburn-preloader"></div>');
        $('body').find('.khinfo').html('Start Slider');
        prepareSlidesContainer(top_container, opt);
        $('body').find('.khinfo').html('Prepared Container');
        prepareSlides(top_container, opt);
        $('body').find('.khinfo').html('Prepared Preloaded Slides');
        prepareShadows(top_container, opt);
        $('body').find('.khinfo').html('Prepared Shadows');
        $('body').find('.khinfo').html('Waiting for Images...');
        opt.loadedImages = 0;
        top_container.waitForImages(function () {
          $('body').find('.khinfo').html('Preloaded Images has been loaded');
          var waitForWF = setInterval(function () {
            $('body').find('.khinfo').html('Waiting for Google Fonts');
            if ($('body').data('googlefonts') != undefined && $('body').data('googlefonts') == "loaded") {
              if (opt.thumbStyle == "image" || opt.thumbStyle == "both" || opt.thumbStyle == "thumb") createThumbnails(top_container, opt);
              if (opt.thumbStyle == "bullet" || opt.thumbStyle == "both") createBullets(top_container, opt);
              $('body').find('.khinfo').html('Google Fonts are here');
              clearInterval(waitForWF);
              startRotation(top_container, opt);
              $('body').find('.khinfo').html('Rotation Started');
              prepareRestSlides(top_container, opt);
            }
          }, 10);
        }, function () {
          $('body').find('.khinfo').html(opt.loadedImages + '. Image has been Loaded');
          opt.loadedImages = opt.loadedImages + 1;
        });
        startTimer(top_container, opt);
        if (opt.touchenabled == "on") top_container.swipe({
          data: top_container,
          swipeLeft: function () {
            var newitem = top_container.data('currentSlide');
            if (newitem.index() < opt.maxitem - 1) {
              var next = top_container.find('ul li:eq(' + (newitem.index() + 1) + ')');
            } else {
              var next = top_container.find('ul li:first');
            }
            swapBanner(newitem, next, top_container, opt);
          },
          swipeRight: function () {
            var newitem = top_container.data('currentSlide');
            if (newitem.index() > 0) {
              var next = top_container.find('ul li:eq(' + (newitem.index() - 1) + ')');
            } else {
              var next = top_container.find('ul li:eq(' + (opt.maxitem - 1) + ')');
            }
            swapBanner(newitem, next, top_container, opt);
          },
          allowPageScroll: "auto"
        });
      })
    }
  })


  function prepareSlides(top, opt) {
    top.find('iframe').attr("frameborder", 0);
    top.find('ul').wrap('<div class="slide_mainmask" style="z-index:10;position:absolute;top:' + (opt.padtop + 1) + 'px;left:' + (opt.padleft + 1) + 'px;width:' + opt.width + 'px;height:' + opt.height + 'px;overflow:hidden"></div>');
    top.find('ul .slide_mainmask').css({
      'opacity': '0.0'
    });
    opt.maxitem = 0;
    top.find('ul >li').each(function (i) {
      opt.maxitem = opt.maxitem + 1;
      var $this = $(this);
      var img = $this.find('img:first');
      img.data('src', img.attr('src'));
      img.attr('src', "");
    });

    for (var i = 0;
    i < opt.preloadedSlides;
    i++) {
      prepareSlide(top, opt, i);
    }

    if (opt.timerShow == "on") top.find('.slide_mainmask').append('<div class="kb-timer"></div>');
  }

  function prepareRestSlides(top, opt) {
    for (var i = opt.preloadedSlides;
    i < opt.maxitem;
    i++) {
      prepareSlide(top, opt, i);
    }
  }


  function prepareSlide(top, opt, nr) {
    top.find('ul >li').each(function (i) {
      if (i == nr) {
        var $this = $(this);
        $this.find('.creative_layer').wrap('<div class="layer_container" style="position:absolute;left:0px;top:0px;width:' + opt.width + 'px;height:' + opt.height + 'px"></div>');
        $this.wrapInner('<div class="slide_container" style="z-index:10;position:absolute;top:0px;left:0px;width:' + opt.width + 'px;height:' + opt.height + 'px;overflow:hidden"><div class="parallax_container" style="position:absolute;top:0pxleft:0px"><div class="kb_container"></div></div></div>');
        var ie_old = ($.browser.msie) && ($.browser.version < 9);

        if ($this.find('img:first').data('bw') != undefined && $this.find('img:first').data('bw').length > 0 && !ie_old) $this.find('.kb_container').append('<img class="bw-main-image" src="' + $this.find('img:first').data('bw') + '" style="position:absolute;top:0px;left:0px">');

        $this.find('img:first').attr('src', $this.find('img:first').data('src'));
        $this.find('.slide_container').css({
          'opacity': '0.0'
        });
        $this.find('.slide_container .parallax_container .kb_container .video_container').each(function () {
          var $this = $(this);
          $this.closest('.slide_container').append('<div class="kenburn-video-overlay"></div>');
          $this.closest('.slide_container').append('<div class="kenburn-video-button"></div>');
          $this.closest('.slide_container').data('video', 1);
          var pbutton = $this.closest('.slide_container').parent().find('.kenburn-video-button');
          var over = $this.closest('.slide_container').parent().find('.kenburn-video-overlay');
          var _width = parseInt(pbutton.css('width'), 0);
          var _height = parseInt(pbutton.css('height'), 0);
          var mwidth = parseInt($this.closest('.slide_container').css('width'), 0);
          var mheight = parseInt($this.closest('.slide_container').css('height'), 0);
          pbutton.css({
            'left': (mwidth / 2 - _width / 2) + 'px',
            'top': (mheight / 2 - _height / 2) + 'px'
          });
          pbutton.data('top', top);
          pbutton.data('url', $this.html());
          $this.remove();
          over.data('origopa', over.css('opacity'));
          pbutton.hover(function () {
            var $this = $(this);
            var $over = $this.parent().find('.kenburn-video-overlay');

            if ($.browser.msie) $over.animate({
              'opacity': '0.5'
            }, {
              duration: 100
            });
            else $over.cssAnimate({
              'opacity': '0.5'
            }, {
              duration: 100
            });

            if ($.browser.version > 7 && $.browser.version < 9) {
              $over.css({
                'display': 'block'
              });
            }
          }, function () {
            var $this = $(this);
            var $over = $this.parent().find('.kenburn-video-overlay');
            if ($.browser.msie) $over.animate({
              'opacity': $over.data('origopa')
            }, {
              duration: 100
            });
            else $over.cssAnimate({
              'opacity': $over.data('origopa')
            }, {
              duration: 100
            });
            if ($.browser.msie && $.browser.version > 7 && $.browser.version < 9) {
              $over.css({
                'display': 'none'
              });
            }
          });
          pbutton.click(function () {
            var $this = $(this);
            var top = $this.data('top');
            var slidemask = top.find('.slide_mainmask');
            slidemask.addClass("videoon");
            top.data('currentSlide').animate({
              'top': opt.height + "px"
            }, {
              duration: 500,
              queue: false
            });
            top.find('.slide_mainmask').append('<div class="video_container" style="z-index:9999;width:' + opt.width + 'px;height:' + opt.height + 'px">' + $this.data('url') + '</div>');
            var video = top.find('.slide_mainmask .video_container');
            video.css({
              'top': (0 - opt.height) + "px"
            });
            video.animate({
              'top': '0px'
            }, {
              duration: 500,
              queue: false
            });
            video.find('* .close').click(function () {
              var slidemask = top.find('.slide_mainmask');
              slidemask.removeClass("videoon");
              top.data('currentSlide').animate({
                'top': "0px"
              }, {
                duration: 600,
                queue: false
              });
              video.animate({
                'top': (0 - opt.height) + 'px'
              }, {
                duration: 600,
                queue: false
              });
              setTimeout(function () {
                video.remove()
              }, 600);
            });
          });
        });
      }
    });
  }


  function prepareSlidesContainer(top, opt) {
    top.append('<div class="kenburn-bg" style="z-index:7;position:absolute;top:0px;left:0px;width:' + opt.width + 'px;height:' + opt.height + 'px;overflow:hidden"></div>');
    var bg = top.find('.kenburn-bg');
    opt.padtop = 0;
    opt.padleft = 0;
    opt.padright = 0;
    opt.padbottom = 0;
    opt.bordertop = 0;
    opt.borderleft = 0;
    opt.borderright = 0;
    opt.borderbottom = 0;
    try {
      opt.padtop = parseInt(bg.css('paddingTop'), 0) || 0;
    } catch (e) {}
    try {
      opt.padleft = parseInt(bg.css('paddingLeft'), 0) || 0;
    } catch (e) {}
    try {
      opt.padright = parseInt(bg.css('paddingRight'), 0) || 0;
    } catch (e) {}
    try {
      opt.padbottom = parseInt(bg.css('paddingBottom'), 0) || 0;
    } catch (e) {}
    try {
      opt.bordertop = parseInt(bg.css('border-top-width'), 0) || 0;
    } catch (e) {}
    try {
      opt.borderleft = parseInt(bg.css('border-left-width'), 0) || 0;
    } catch (e) {}
    try {
      opt.borderright = parseInt(bg.css('border-right-width'), 0) || 0;
    } catch (e) {}
    try {
      opt.borderbottom = parseInt(bg.css('border-bottom-width'), 0) || 0;
    } catch (e) {}
    opt.width = opt.width - opt.padleft - opt.padright - opt.borderleft - opt.borderright;
    opt.height = opt.height - opt.padtop - opt.padbottom - opt.bordertop - opt.borderbottom;
    bg.width(opt.width);
    bg.height(opt.height);
    var full = opt.width + opt.padleft + opt.padright + opt.borderleft + opt.borderright;
    top.closest('.kb_slider_wrapper').width(full);
  }

  function prepareShadows(top, opt) {
    if (opt.shadow == "true" || opt.shadow == true || opt.shadow == "on") {
      var full = opt.width + opt.padleft + opt.padright + opt.borderleft + opt.borderright;
      top.closest('.kb_slider_wrapper').width(full);
      var fifty = full / 2;
      if (fifty > 50) fifty = 50;
      full = full - 2 * fifty;
      var leftshadow = $('<div class="kenburn-leftshadow" style="top:' + (1 + opt.height + opt.padtop + opt.padbottom) + 'px;left:0px;width:' + fifty + 'px"></div>');
      var rightshadow = $('<div class="kenburn-rightshadow" style="top:' + (1 + opt.height + opt.padtop + opt.padbottom) + 'px"></div>');
      var repeatshadow = $('<div class="kenburn-repeatshadow" style="top:' + (1 + opt.height + opt.padtop + opt.padbottom) + 'px;left:' + fifty + 'px;width:' + full + 'px"></div>');
      top.append(leftshadow);
      top.append(repeatshadow);
      top.append(rightshadow);
    } else {
      var thc = top.find('.kenburn_thumb_container');
    }
  }

  function createThumbnails(top, opt) {
    var maxitem = top.find('ul >li').length;
    if (maxitem < opt.thumbAmount) opt.thumbAmount = maxitem;
    var maxwidth = (opt.thumbAmount * opt.thumbWidth) + ((opt.thumbAmount - 1) * opt.thumbSpaces);
    var maxheight = opt.thumbHeight;
    var bgwidth = maxwidth - opt.thumbSpaces + 2 * opt.thumbPadding;
    var bgheight = maxheight + opt.thumbPadding;
    var full = opt.width + opt.padleft + opt.padright + opt.borderleft + opt.borderright;
    top.closest('.kb_slider_wrapper').width(full);
    var centerl = Math.round(full / 2 - bgwidth / 2);
    var max = (maxitem * opt.thumbWidth) + ((maxitem - 1) * opt.thumbSpaces);
    top.append('<div class="kenburn_thumb_container" style="position:absolute;left:' + centerl + 'px;top:' + (1 + opt.height + opt.padtop + opt.padbottom) + 'px;width:' + (bgwidth + 2) + 'px;height:' + (bgheight + 2) + 'px;"></div>');
    var thc = top.find('.kenburn_thumb_container');
    if (opt.thumbAmount == 0) thc.css({
      'visibility': 'hidden'
    });
    thc.append('<div class="kenburn_thumb_container_bg" style="position:absolute;left:1px;top:0px;width:' + (bgwidth) + 'px;height:' + (bgheight) + 'px"></div>');
    var is_chrome = /chrome/.test(navigator.userAgent.toLowerCase());
    thc.find('.kenburn_thumb_container_bg').append('<div class="kenburn-repeatshadow" style="top:0px;left:' + (-2) + 'px;width:' + (bgwidth + 4) + 'px"></div>');
    thc.append('<div id="thumbmask" style="overflow:hidden;position:absolute;top:0px;left:' + (opt.thumbPadding + 1) + 'px; width:' + (maxwidth - opt.thumbSpaces) + 'px; height:' + opt.thumbHeight + 'px;overflow:hidden;"></div>');
    var thma = thc.find('#thumbmask');
    thma.append('<div class="thumbsslide" style="width:' + max + 'px"></div>');
    var thbg = thma.find('.thumbsslide');
    top.find('ul >li').each(function (i) {
      var $this = $(this);
      var img = $this.find('img:first');
      var bgsrc = img.data('thumb_bw');
      var src = img.data('thumb');
      var isvideo = $this.find('.slide_container').data('video') == 9;
      var thumb = $('<div class="kenburn-thumbs" id="thumb' + i + '" style="cursor:pointer;position:absolute;top:0px;left:' + ((i * opt.thumbWidth) + ((i - 1) * opt.thumbSpaces)) + 'px;width:' + opt.thumbWidth + 'px;height:' + opt.thumbHeight + 'px;background:url(' + bgsrc + ');"></div>');
      thumb.data('id', i);
      if (i == maxitem) thumb.css({
        'margin-right': '0px'
      });
      thbg.append(thumb);
      var new_img = $('<div id="over" style="cursor:pointer"><img id="over_img" src="' + src + '"></div>');
      thumb.append(new_img);
      var ovv = thumb.find('#over');
      ovv.css({
        'opacity': '0.0'
      });
      if ($.browser.msie && $.browser.version > 7 && $.browser.version < 9) {
        ovv.css({
          'display': 'none'
        });
      }
      ovv.css({
        'overflow': 'hidden',
        'position': 'absolute',
        'left': '0px',
        'opacity': '0.0',
        'height': opt.thumbHeight + "px",
        'width': opt.thumbWidth + "px"
      });
      ovv.find('img').css({
        'position': 'absolute',
        'left': '0px'
      });
      if ($.browser.msie) {
        ovv.animate({
          'left': '0px',
          'opacity': '0.0',
          'height': opt.thumbHeight + "px",
          'width': opt.thumbWidth + "px"
        }, {
          duration: 50,
          queue: false
        });
        ovv.find('img').animate({
          'left': '0px'
        }, {
          duration: 50,
          queue: false
        });
      } else {
        ovv.cssAnimate({
          'left': '0px',
          'opacity': '0.0',
          'height': opt.thumbHeight + "px",
          'width': opt.thumbWidth + "px"
        }, {
          duration: 50,
          queue: false
        });
        ovv.find('img').cssAnimate({
          'left': '0px'
        }, {
          duration: 50,
          queue: false
        });
      }
      if (opt.shadow == "true" || opt.shadow == true || opt.shadow == "on") {
        var is_chrome = /chrome/.test(navigator.userAgent.toLowerCase());
        if (!is_chrome) {
          var repeatshadow = $('<div class="kenburn-repeatshadow" style="position:relative;margin-left:0px;width:' + opt.thumbWidth + 'px;"></div>');
          thumb.append(repeatshadow);
        }
      }
      var thumbnail = thbg.find('#thumb' + i);
      thumbnail.hover(function () {
        var $this = $(this).find('#over');
        if (!$this.parent().hasClass("selected")) {
          if ($.browser.msie) {
            if ($.browser.msie && $.browser.version > 7 && $.browser.version < 9) $this.css({
              'display': 'block'
            });
            else $this.animate({
              'opacity': '1.0'
            }, {
              duration: 300,
              queue: false
            });
          } else {
            $this.css({
              'left': '0px',
              'display': 'block'
            });
            $this.find("img").css({
              'display': 'block',
              'opacity': '1.0',
              'left': '0px'
            });
            $this.cssAnimate({
              'opacity': '1.0'
            }, {
              duration: 300,
              queue: false
            });
          }
        }
      }, function () {
        var $this = $(this).find('#over');
        if (!$this.parent().hasClass("selected")) {
          if ($.browser.msie) {
            if ($.browser.msie && $.browser.version > 7 && $.browser.version < 9) $this.css({
              'display': 'none'
            });
            else $this.animate({
              'opacity': '0'
            }, {
              duration: 300,
              queue: false
            });
          } else {
            $this.cssAnimate({
              'opacity': '0.0'
            }, {
              duration: 300,
              queue: false
            });
          }
        }
      });
      thumbnail.click(function () {
        var $this = $(this);
        if (!$this.hasClass("selected")) {
          var newslide = top.find('ul li:eq(' + $this.data('id') + ')');
          swapBanner(top.data('currentSlide'), newslide, top, opt);
        }
      });
    });
    if (maxwidth < max) {
      $(document).mousemove(function (e) {
        $('body').data('mousex', e.pageX);
      });
      var diff = (max - maxwidth);
      top.data('thumbnailmaxdif', diff);
      var steps = diff / (maxwidth - opt.thumbWidth);
      thma.data('steps', steps);
      thma.data('thw', opt.thumbWidth);
      thma.data('maxw', diff);
      thma.mouseenter(function () {
        var $this = $(this);
        if (opt.pauseOnRollOverThumbs != "off") $this.addClass('overme');
        var offset = $this.offset();
        var x = $('body').data('mousex') - offset.left;
        x = x - $this.data('thw') / 2;
        var steps = $this.data('steps');
        var pos = (0 - steps * x);
        if (pos > 0) pos = 0;
        if (pos < 0 - diff) pos = 0 - diff;
        if (opt.pauseOnRollOverMain != "off") $this.addClass("overon");
        $this.find('.thumbsslide').css({
          'position': 'absolute'
        });
        if ($.browser.msie) $this.find('.thumbsslide').animate({
          'left': pos + 'px'
        }, {
          duration: 200,
          queue: false
        });
        else $this.find('.thumbsslide').cssAnimate({
          'left': pos + 'px'
        }, {
          duration: 200,
          queue: false
        });
      });
      thma.mousemove(function () {
        var $this = $(this);
        if (opt.pauseOnRollOverThumbs != "off") $this.addClass('overme');
        var offset = $this.offset();
        var x = $('body').data('mousex') - offset.left;
        x = x - $this.data('thw') / 2;
        var steps = $this.data('steps');
        var pos = (0 - steps * x);
        if (pos > 0) pos = 0;
        if (pos < 0 - diff) pos = 0 - diff;
        if (!$this.hasClass("overon")) {
          $this.find('.thumbsslide').css({
            'position': 'absolute'
          });
          if ($.browser.msie) $this.find('.thumbsslide').animate({
            'left': pos + 'px'
          }, {
            duration: 0,
            queue: false
          });
          else $this.find('.thumbsslide').cssAnimate({
            'left': pos + 'px'
          }, {
            duration: 0,
            queue: false
          });
        } else {
          setTimeout(function () {
            $this.removeClass('overon');
          }, 100);
        }
      });
      thma.mouseout(function () {
        var $this = $(this);
        $this.removeClass('overme');
      });
    }
    if (opt.thumbAmount == 0 || opt.thumbStyle == "none") {
      thc.css({
        'visibility': 'hidden'
      });
      top.css({
        'width': full + "px"
      });
    } else {
      top.css({
        'width': full + "px",
        'height': (opt.height + bgheight) + "px"
      });
    }
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

  function startRotation(item, opt) {
    if ($.browser.msie) {
      item.find('.kenburn-preloader').animate({
        'opacity': '0.0'
      }, {
        duration: 300,
        queue: false
      });
    } else {
      item.find('.kenburn-preloader').cssAnimate({
        'opacity': '0.0'
      }, {
        duration: 300,
        queue: false
      });
    }
    setTimeout(function () {
      item.find('.kenburn-preloader').remove();
    }, 300);
    var first_slide = item.find('ul li:first');
    swapBanner(first_slide, first_slide, item, opt);
    startParallax(item, opt);
    opt.loaded = 1;
  }

  function startParallax(slidertop, opt) {
    var top = slidertop.find('.slide_mainmask');
    top.data('maxwidth', opt.width + opt.padleft + opt.padright);
    top.data('maxheight', opt.height + opt.padtop + opt.padbottom);
    top.data('pdistance', opt.parallaxX);
    top.data('pdistancey', opt.parallaxY);
    top.data('cdistance', opt.captionParallaxX);
    top.data('cdistancey', opt.captionParallaxY);
    top.data('opt', opt);
    $('body').append('<div id="mpinfo" style="z-index:1000000;background-color:#fff;position:absolute;top:10px;left:10px;font-size:15px"></div>');
    var slide = top.parent().data('currentSlide');
    var par = top.find('.parallax_container');
    var layers = slide.find('.layer_container');
    top.mouseenter(function (e) {
      var $this = $(this);
      var thma = $this.parent().find('.kenburn_thumb_container #thumbmask');
      var slide = $this.parent().data('currentSlide');
      var par = slide.find('.parallax_container');
      var layers = slide.find('.layer_container');
      $this.addClass('overon');
      $this.append('<div class="kb-pause"></div>');
    });
    top.mouseleave(function (e) {
      var $this = $(this);
      var slide = $this.parent().data('currentSlide');
      var par = slide.find('.parallax_container');
      var layers = slide.find('.layer_container');
      $this.removeClass("overme");
      $this.addClass('overon');
      $this.find('.kb-pause').remove();
    });
    top.mousemove(function (e) {
      var $this = $(this);
      if (opt.pauseOnRollOverMain != "off") $this.addClass("overme");
      var thma = $this.parent().find('.kenburn_thumb_container #thumbmask');
      if (!thma.hasClass('overme') && !$this.hasClass('overon')) {
        var slide = $this.parent().data('currentSlide');
        var par = slide.find('.parallax_container');
        var layers = slide.find('.layer_container');
      } else {
        setTimeout(function () {
          $this.removeClass('overon')
        }, 100);
      }
    });
  }

  function randomAlign() {
    var align = "";
    var a = Math.floor(Math.random() * 3);
    var b = Math.floor(Math.random() * 3);
    if (a == 0) align = "left";
    else if (a == 1) align = "center"
    else align = "right";
    if (b == 0) align = align + ",top"
    else if (b == 1) align = align + ",center"
    else align = align + ",bottom";
    return align;
  }

  function swapBanner(item, newitem, slider_container, opt) {
    var trans = false;

    slider_container.find('ul >li').each(function (i) {
      var $this = $(this);

      if ($this.index() != item.index() && $this.index() != newitem.index()) {
        $this.css({
          'display': 'none',
          'position': 'absolute',
          'left': '0px',
          'z-index': '994'
        });
      }
    });

    var video = slider_container.find('.slide_mainmask .video_container');

    setTimeout(function () {
      video.remove()
    }, 600);

    var slidemask = slider_container.find('.slide_mainmask');

    slidemask.removeClass("videoon");

    item.css({
      'position': 'absolute',
      'top': '0px',
      'left': '0px',
      'z-index': '900'
    });

    newitem.css({
      'position': 'absolute',
      'top': '0px',
      'left': '0px',
      'z-index': '1000'
    });

    newitem.css({
      'display': 'block'
    });
    var sour = newitem.find('img:first');

    var sourbw = newitem.find('.bw-main-image');

    if (newitem.data('ww') == undefined) {
      var oldW = newitem.find('img').width();

      var oldH = newitem.find('img').height();

      var factor;

      if (oldW != 0) {
        if (sour.width() > 0 && sour.width() < opt.width) {
          factor = opt.width / oldW;

          oldW = oldW * factor;

          oldH = oldH * factor;

          //PQTUAN EDIT HERE
          //alert(oldW);

        } else if (sour.width() > 0 && sour.width() > opt.width) {
          factor = opt.width / oldW;

          oldW = oldW * factor;

          oldH = oldH * factor;

        }

        if (sour.height() > 0 && oldH < opt.height) {
          var factor = opt.height / oldH;

          oldW = oldW * factor;

          oldH = oldH * factor;

        }
        //PQTUAN EDIT HERE
        //alert(oldW);

        newitem.data('ww', oldW);

        newitem.data('hh', oldH);

      }
    } else {
      var oldW = newitem.data('ww');

      var oldH = newitem.data('hh');

    }
    //PQTUAN EDIT HERE
    //alert(oldW);

    var newT = 0;
    var newL = 0;
    var endT = 0;
    var endL = 0;
    var startalign = newitem.data('startalign');
    var endalign = newitem.data('endalign');
    if (startalign == "random") startalign = randomAlign();
    if (endalign == "random") endalign = randomAlign();
    if (startalign != undefined) {
      var salignh = startalign;
      var horiz = salignh.split(',')[0];
      var vert = salignh.split(',')[1];
      if (horiz == "left") newL = 0;
      else if (horiz == "center") newL = (opt.width / 2 - oldW / 2);
      else if (horiz == "right") newL = 0 - Math.abs(opt.width - oldW);
      if (vert == "top") newT = 0;
      else if (vert == "center") newT = (opt.height / 2 - oldH / 2);
      else if (vert == "bottom") newT = 0 - Math.abs(opt.height - oldH);
    }
    if (endalign != undefined) {
      var ealignh = endalign;
      var horiz = ealignh.split(',')[0];
      var vert = ealignh.split(',')[1];
      if (horiz == "left") endL = 0;
      else if (horiz == "center") endL = (opt.width / 2 - oldW / 2);
      else if (horiz == "right") endL = 0 - Math.abs(opt.width - oldW);
      if (vert == "top") endT = 0;
      else if (vert == "center") endT = (opt.height / 2 - oldH / 2);
      else if (vert == "bottom") endT = 0 - Math.abs(opt.height - oldH);
    }
    clearInterval(item.data('interval'));
    sour.parent().find('.canvas-now').remove();
    sour.parent().find('.canvas-now-bw').remove();
    var hasCanvas = isCanvasSupported();
    var isIEunder9 = $.browser.msie && $.browser.version < 9;
    if (isIEunder9) hasCanvas = false;
    if (hasCanvas) {
      sour.parent().append('<div style="position:absolute;z-index:1" class="canvas-now"><canvas class="canvas-now-canvas" width="' + oldW + '" height="' + oldH + '"></canvas></div>');
      sour.css({
        'display': 'none'
      });
      var canvas = sour.parent().find('.canvas-now-canvas')[0];
      var context = canvas.getContext('2d');
      if (sourbw.length > 0) {
        sour.parent().append('<div style="position:absolute;z-index:20" class="canvas-now-bw"><canvas class="canvas-now-canvas-bw" width="' + oldW + '" height="' + oldH + '"></canvas></div>');
        sourbw.css({
          'display': 'none'
        });
        var canvasbw = sour.parent().find('.canvas-now-canvas-bw')[0];
        var contextbw = canvasbw.getContext('2d');
      }
    } else {}
    var time = newitem.data('panduration');
    var scalerX = 0;
    var scalerY = 0;
    var newW = oldW;
    var newH = oldH;

    //PQTUAN EDIT HERE
    //alert(newW);

    var zoomfact = newitem.data('zoomfact');

    var zoom = newitem.data('zoom');
    if (zoom == "random") {
      if (Math.floor(Math.random() * 2) == 0) zoom = "out"
      else zoom = "in";
    }
    if (newitem.data('zoomfact') == "random") {
      zoomfact = (Math.random() * 1 + 1);
    }
    if (zoom == "out") {
      newW = newW * zoomfact;
      newH = newH * zoomfact;
      newL = newL * zoomfact;
      newT = newT * zoomfact;
    }
    var movX = (endL - newL) / (time * 25);
    var movY = (endT - newT) / (time * 25);
    var opaStep = 1 / (time * 25);
    scalerX = (oldW * zoomfact) / (time * 25) / 10;
    scalerY = (oldH * zoomfact) / (time * 25) / 10;
    if (zoom == "out") {
      scalerX = scalerX * -1;
      scalerY = scalerY * -1;
    }
    if (newitem.data('endalign') != undefined) {
      var ealignh = newitem.data('endalign');
      var horiz = ealignh.split(',')[0];
      var vert = ealignh.split(',')[1];
      if (horiz == "left") movX = movX + scalerX / 4;
      else if (horiz == "center") movX = movX - scalerX / 2;
      else if (horiz == "right") movX = movX - scalerX;
      if (vert == "top") movY = movY + scalerY / 4;
      else if (vert == "center") movY = movY - scalerY / 2;
      else if (vert == "bottom") movY = movY - scalerY;
    }
    if (opt.timer > parseInt(newitem.data('panduration'), 0) * 10) {
      opt.timer = parseInt(newitem.data('panduration'), 0) * 10
    } else {
      opt.timer = opt.savedTimer * 10;
    }
    if (hasCanvas) {
      context.drawImage(sour[0], newL, newT, newW, newH);
      if (sourbw.length > 0) {
        contextbw.drawImage(sourbw[0], newL, newT, newW, newH);
        setTimeout(function () {
          sour.parent().find('.canvas-now-bw').cssAnimate({
            'opacity': '0.0'
          }, {
            duration: newitem.data('colortransition') * 1000,
            queue: false
          });
        }, 500);
      }
    }
    sour.cssStop(true, true);
    sourbw.cssStop(true, true);
    sour.css({
      'position': 'absolute',
      'left': newL + "px",
      'top': newT + "px",
      'width': newW + "px",
      'height': newH + "px",
      'opacity': 1.0
    });
    sourbw.css({
      'position': 'absolute',
      'left': newL + "px",
      'top': newT + "px",
      'width': newW + "px",
      'height': newH + "px",
      'opacity': 1.0
    });
    var oldL = newL;
    var oldT = newT;
    var oldWW = newW;
    step = 0;
    newitem.data('interval', setInterval(function () {
      if (!slider_container.parent().parent().find('.kenburn_thumb_container #thumbmask').hasClass('overme') && !slider_container.find('.slide_mainmask').hasClass('overme') && !slider_container.find('.slide_mainmask').hasClass('videoon')) {
        newW = newW + scalerX;
        newH = newH + scalerY;
        newL = newL + movX;
        newT = newT + movY;
        if (newL > 0) newL = 0;
        if (newT > 0) newT = 0;
        if (newL < (opt.width - newW)) newL = opt.width - newW;
        if (newT < (opt.height - newH)) newT = opt.height - newH;
        if (hasCanvas) {
          context.drawImage(sour[0], newL, newT, newW, newH);
          if (sourbw.length > 0) contextbw.drawImage(sourbw[0], newL, newT, newW, newH);
        } else {
          var s = newW / oldWW;
          var p1 = newL - oldL;
          var p2 = newT - oldT;
          if (jQuery.browser.msie) {
            sour.css({
              'filter': 'progid:DXImageTransform.Microsoft.Matrix(FilterType="bilinear",M11=' + s + ',M12=0,M21=0,M22=' + s + ',Dx=' + p1 + ',Dy=' + p2 + ')'
            });
            sour.css({
              '-ms-filter': 'progid:DXImageTransform.Microsoft.Matrix(FilterType="bilinear",M11=' + s + ',M12=0,M21=0,M22=' + s + ',Dx=' + p1 + ',Dy=' + p2 + ')'
            });
            sourbw.remove();
          } else {
            sour.cssAnimate({
              'left': newL + "px",
              'top': newT + "px",
              'width': newW + "px",
              'height': newH + "px"
            }, {
              duration: 38,
              easing: 'linear',
              queue: false
            });
            if (sourbw.length > 0 && sourbw.css('opacity') > 0) {
              sourbw.cssAnimate({
                'left': newL + "px",
                'top': newT + "px",
                'width': newW + "px",
                'height': newH + "px"
              }, {
                duration: 38,
                easing: 'linear',
                queue: false
              });
              sourbw.css({
                'opacity': (sourbw.css('opacity') - opaStep)
              });
            }
          }
        }
      }
    }, 40));
    var is_chrome = /chrome/.test(navigator.userAgent.toLowerCase());
    if (is_chrome && opt.repairChromeBug == "on") {
      newitem.data('transition', 'slide');
    }
    if (item.index() != newitem.index()) {
      setTimeout(function () {
        item.find('.canvas-now').css({
          'visibility': 'hidden'
        });
        item.find('.canvas-now-bw').css({
          'visibility': 'hidden'
        });
      }, 550);
    }
    if (newitem.data('transition') == "slide") {
      if (trans == false) {
        var left = true;
        if (item.index() > newitem.index()) left = false;
        if (left) {
          video.animate({
            'left': (0 - opt.width) + 'px'
          }, {
            duration: 600,
            queue: false
          });
          newitem.find('.slide_container').stop(true, true);
          newitem.find('.slide_container').css({
            'opacity': '1.0',
            'left': opt.width + "px"
          });
          item.find('.slide_container').animate({
            'left': 0 - opt.width + 'px'
          }, {
            duration: 600,
            queue: false
          });
          newitem.find('.slide_container').animate({
            'left': '0px',
            'top': '0px',
            'opacity': '1.0'
          }, {
            duration: 600,
            queue: false
          });
        } else {
          video.animate({
            'left': (opt.width) + 'px'
          }, {
            duration: 600,
            queue: false
          });
          newitem.find('.slide_container').stop(true, true);
          newitem.find('.slide_container').css({
            'opacity': '1.0',
            'position': 'absolute',
            'top': '0px',
            'left': 0 - opt.width + 'px'
          });
          item.find('.slide_container').animate({
            'left': opt.width + 'px'
          }, {
            duration: 600,
            queue: false
          });
          newitem.find('.slide_container').animate({
            'left': '0px',
            'top': '0px',
            'opacity': '1.0'
          }, {
            duration: 600,
            queue: false
          });
        }
      }
    } else {
      item.find('.slide_container').stop(true, true);
      item.find('.slide_container').animate({
        'opacity': 0
      }, {
        duration: 600,
        queue: false
      });
      video.animate({
        'opacity': '0.0'
      }, {
        duration: 600,
        queue: false
      });
      newitem.find('.slide_container').stop(true, true);
      newitem.find('.slide_container').css({
        'opacity': 0,
        'left': '0px',
        'top': '0px'
      });
      newitem.find('.slide_container').animate({
        'opacity': 1
      }, {
        duration: 600,
        queue: false
      });
    }
    if (slider_container.find('.kenburn_thumb_container').length > 0) {
      var thumb = slider_container.find('.kenburn_thumb_container #thumbmask .thumbsslide #thumb' + newitem.index() + ' #over');
      slider_container.find('.kenburn_thumb_container #thumbmask .thumbsslide #thumb' + item.index()).each(function (i) {
        var $this = $(this);
        if ($this.attr('id') != "thumb" + newitem.index()) {
          $this.removeClass('selected');
          var over = $this.find('#over');
          over.stop();
          over.css({
            'position': 'absolute',
            'opacity': '0.0'
          });
          setTimeout(function () {
            over.find('img').css({
              'position': 'absolute',
              'left': '0px'
            });
          }, 30);
          if ($.browser.msie) {
            over.animate({
              'left': '0px',
              'height': opt.thumbHeight + "px",
              'width': opt.thumbWidth + "px"
            }, {
              duration: 1,
              queue: false
            });
          } else {
            over.cssAnimate({
              'left': '0px',
              'height': opt.thumbHeight + "px",
              'width': opt.thumbWidth + "px"
            }, {
              duration: 1,
              queue: false
            });
          }
          if ($.browser.msie && $.browser.version > 7 && $.browser.version < 9) over.css({
            'display': 'none'
          });
        }
      });
      thumb.parent().addClass('selected');
      thumb.animate({
        'opacity': '1.0'
      }, {
        duration: 300,
        queue: false
      });
      if ($.browser.msie && $.browser.version > 7 && $.browser.version < 9) thumb.css({
        'display': 'block'
      });
      slider_container.data('currentThumb', thumb);
    }
    if (slider_container.find('.minithumb').length > 0) {
      var thumb = slider_container.find('#minithumb' + newitem.index());
      slider_container.find('.minithumb').removeClass('selected');
      thumb.addClass('selected');
      if (opt.thumbStyle != "both") slider_container.data('currentThumb', thumb);
    }
    slider_container.data('currentSlide', newitem);
    textanim(newitem, 100, slider_container);
    opt.cd = 0;
  }

  function isCanvasSupported() {
    var elem = document.createElement('canvas');
    return !!(elem.getContext && elem.getContext('2d'));
  }

function startTimer(top, opt) {
    opt.cd = 0;
    if (opt.thumbStyle == "image" || opt.thumbStyle == "both" || opt.thumbStyle == "thumb") {
      if ($.browser.msie) top.find('.kenburn_thumb_container #thumbmask .thumbsslide').cssAnimate({
        'left': '0px'
      }, {
        duration: 300,
        queue: false
      });
      else top.find('.kenburn_thumb_container #thumbmask .thumbsslide').animate({
        'left': '0px'
      }, {
        duration: 300,
        queue: false
      });
      var tmask = top.find('.kenburn_thumb_container #thumbmask');
      var tslide = tmask.find('.thumbsslide');
      var slidemask = top.find('.slide_mainmask');
      setInterval(function () {
        if (opt.loaded == 1) {
          var newitem = top.data('currentSlide');
          var thumb = top.data('currentThumb');
          if (!tmask.hasClass('overme') && !slidemask.hasClass('overme') && !slidemask.hasClass('videoon')) {
            opt.cd = opt.cd + 1;
            var offsetme = Math.floor(opt.thumbWidth * ((opt.cd / opt.timer)))
            try {
              top.find('.kb-timer').animate({
                'width': (opt.cd / opt.timer * 100) + "%"
              }, {
                duration: 100,
                queue: false
              });
            } catch (e) {}
            if (opt.cd == opt.timer) {
              opt.cd = 0;
              if (newitem.index() < opt.maxitem - 1) {
                var next = top.find('ul li:eq(' + (newitem.index() + 1) + ')');
                swapBanner(newitem, next, top, opt);
                var minus = 0 - parseInt(thumb.parent().css('left'), 0);
                tslide.css({
                  'position': 'absolute'
                });
                if (Math.abs(minus) <= top.data('thumbnailmaxdif')) {
                  if ($.browser.msie) tslide.animate({
                    'left': minus + 'px'
                  }, {
                    duration: 300,
                    queue: false
                  });
                  else tslide.cssAnimate({
                    'left': minus + 'px'
                  }, {
                    duration: 300,
                    queue: false
                  });
                } else {
                  minus = 0 - top.data('thumbnailmaxdif');
                  if ($.browser.msie) tslide.animate({
                    'left': minus + 'px'
                  }, {
                    duration: 300,
                    queue: false
                  });
                  else tslide.cssAnimate({
                    'left': minus + 'px'
                  }, {
                    duration: 300,
                    queue: false
                  });
                }
              } else {
                swapBanner(newitem, top.find('ul li:first'), top, opt);
                if ($.browser.msie) tslide.animate({
                  'left': '0px'
                }, {
                  duration: 300,
                  queue: false
                });
                else tslide.cssAnimate({
                  'left': '0px'
                }, {
                  duration: 300,
                  queue: false
                });
              }
            }
          }
        }
      }, 100);
    } else {
      var slidemask = top.find('.slide_mainmask');
      setInterval(function () {
        if (opt.loaded == 1) {
          var newitem = top.data('currentSlide');
          var thumb = top.data('currentThumb');
          if (!slidemask.hasClass('overme') && !slidemask.hasClass('videoon')) {
            opt.cd = opt.cd + 1;
            try {
              top.find('.kb-timer').animate({
                'width': (opt.cd / opt.timer * 100) + "%"
              }, {
                duration: 100,
                queue: false
              });
            } catch (e) {}
            if (opt.cd == opt.timer) {
              opt.cd = 0;
              if (newitem.index() < opt.maxitem - 1) {
                var next = top.find('ul li:eq(' + (newitem.index() + 1) + ')');
                swapBanner(newitem, next, top, opt);
                if (opt.thumbStyle != "none") {
                  var minus = 0 - parseInt(thumb.parent().css('left'), 0);
                  if (tslide != null && tslide != undefined) {
                    tslide.css({
                      'position': 'absolute'
                    });
                    if (Math.abs(minus) <= top.data('thumbnailmaxdif')) {
                      if ($.browser.msie) tslide.animate({
                        'left': minus + 'px'
                      }, {
                        duration: 300,
                        queue: false
                      });
                      else tslide.cssAnimate({
                        'left': minus + 'px'
                      }, {
                        duration: 300,
                        queue: false
                      });
                    } else {
                      minus = 0 - top.data('thumbnailmaxdif');
                      if ($.browser.msie) tslide.animate({
                        'left': minus + 'px'
                      }, {
                        duration: 300,
                        queue: false
                      });
                      else tslide.cssAnimate({
                        'left': minus + 'px'
                      }, {
                        duration: 300,
                        queue: false
                      });
                    }
                  }
                }
              } else {
                swapBanner(newitem, top.find('ul li:first'), top, opt);
                if (tslide != null && tslide != undefined) {
                  if ($.browser.msie) tslide.animate({
                    'left': '0px'
                  }, {
                    duration: 300,
                    queue: false
                  });
                  else tslide.cssAnimate({
                    'left': '0px'
                  }, {
                    duration: 300,
                    queue: false
                  });
                }
              }
            }
          }
        }
      }, 100);
    }
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
})(jQuery);