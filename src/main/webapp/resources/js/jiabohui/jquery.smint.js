/*

SMINT V1.0 by Robert McCracken

SMINT is my first dabble into jQuery plugins!

http://www.outyear.co.uk/smint/

If you like Smint, or have suggestions on how it could be improved, send me a tweet @rabmyself

*/
(function(){

	var smint = function(elem,options){
		var _this = this;

		this.options = options;
		this.obj = $(elem);

		_this.init();
	}

	smint.prototype = {
		settings: {
			scrollSpeed  : 500,
            top : 0,
            moveEven:function(_this){},//开始移动之后触发的事件
            stopEven:function(_this){},//当回到顶部并停下之后触发的是回见
            scrollFun:function(_this){}//用户自定义添加的函数，在滚动条滚动时触发
		},

		init:function(){
			var _this = this;

			this.config = $.extend( {}, this.settings, this.options );

			this.obj.addClass('smint');

			this
			.windowScroll();
		},

		stickyMenu:function(){
			var _this = this;
			// check position and make sticky if needed
			var stickyTop = _this.obj.offset().top;	
			// current distance top
			var scrollTop = $(window).scrollTop(); 
						
			// if we scroll more than the navigation, change its position to fixed and add class 'fxd', otherwise change it back to absolute and remove the class
			if (scrollTop > 0 && scrollTop >= this.config.top) { 
				this.obj.css({ 'position': 'fixed', 'top':0 ,'z-index':100}).addClass('fxd');
				_this.config.moveEven(_this.obj);
			} else {
				this.obj.css({ 'position': 'relative','top':0,'z-index':100}).removeClass('fxd');
				_this.config.stopEven(_this.obj);
			}   
			
		} ,

		windowScroll:function(){
			var _this = this;
			$(window).scroll(function(){
				_this.stickyMenu(_this);
				_this.config.scrollFun(_this);
			});
			
		},

		alert:function(){
			alert(121);
		}
	}

	
	$.fn.smint = function( options ) {
		return this.each( function() {
			new smint(this,options );
		});
	}

})();
