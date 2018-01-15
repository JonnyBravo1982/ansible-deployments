/**
 * @fileoverview
 * <p>
 * <tt>syntax_plugin_code</tt> is a static JavaScript class providing
 * visibility toggling for DokuWiki's CODE markup.
 * </p><p>
 * All that's to be done in the corresponding HTML file is to include
 * this file by placing <tt>
 * '&lt;script type="text/javascript" src="syntax_plugin_code.js"&gt;</tt>
 * <tt>&lt;/script&gt;</tt>
 * in the HEAD section; with DokuWiki this is done automatically.
 * The script is initialized and activated automatically at loadtime.
 * </p><pre>
 *		Copyright (C) 2007, 2010  M.Watermann, D-10247 Berlin, FRG
 *			All rights reserved
 *		EMail : &lt;support@mwat.de&gt;
 * </pre>
 * @author <a href="mailto:support@mwat.de">Matthias Watermann</a>
 * @version <tt>$Id: syntax_plugin_code.js,v 1.8 2010/02/21 14:36:29 matthias Exp $</tt>
 * @since created 07-Feb-2007
 */
/*jslint bitwise:true,browser:true,eqeqeq:true,evil:false,forin:true,
        immed:false,laxbreak:false,newcap:true,nomen:false,onevar:true,
        plusplus:false,regexp:true,sub:false,undef:true,white:false */
/*global window */

/**
 * Setup the <tt>syntax_plugin_code</tt> behaviour.
 *
 * <p>
 * To avoid polluting the global namespace even more than it already
 * is with DokuWiki we define and invoke a function to create a closure
 * that serves as our private namespace.
 * This object is just a meaningless value as far as the application is
 * concerned.
 * It encapsulates all methods and properties in its private closure.
 * </p>
 * @public
 */
var syntax_plugin_code = function() {
	// Private member fields (preallocated strings to avoid repeated
	// memory allocations inside loops and event handlers):
	var	_cH = ' codeHidden',	// CSS class
		_cS = ' codeShown',		// dito
		_reH = /\s*\bcodeHidden\b/gi,	// RegEx to match CSS class
		_reS = /\s*\bcodeShown\b/gi,	// dito

// The "_Divs()" and "_Ps()" methods are one-time-only - meaning that
// they're needed only during setup. Hence they are declared as function
// members and will be reset to a meaningless value once they've done
// their respective job.

		/**
		 * Get a list of <tt>DIV</tt> elements with CSS class <tt>"code"</tt>.
		 *
		 * @returns Array A (possibly empty) list of <tt>div</tt> elements
		 * with CSS class <tt>"code"</tt> assigned.
		 * @private
		 * @member syntax_plugin_code
		 * @type Array
		 */
		_Divs = function() {
			var	d,		// list of DIVs
				e,		// the currently handled element
				l,		// length of DIV list
				r = [],	// the method's result
				re = /\bcode\b/i;	// RegEx to match CSS class

			try {
				if ((d = window.document.getElementsByTagName('div')) &&
				(l = d.length)) {
					do {
						if ((e = d[--l]) &&
						(e.className) &&		// there's a CSS class
						re.test(e.className)) {	// it contains the "code" class
							// "Array.push()" is not implemented by older M$IE
							r[r.length] = e;
						} // if
					} while (l);
				} // if
			} catch(X) {	// non standards compliant browser
				// return the empty list
			} // try

			return r;
		},	// _Divs()

		/**
		 * Get a list of <tt>P</tt> elements representing a footer/header
		 * for CODE markup.
		 *
		 * @returns Array A (possibly empty) list of <tt>P</tt> elements
		 * referencing the footer/header elements of the respective
		 * PRE elements.
		 * @private
		 * @member syntax_plugin_code
		 * @type Array
		 */
		_Ps = function() {
			var	d = _Divs(),	// list of DIVs
				e,		// the currently handled element
				fc,		// the element's first child node
				fcn,	// the first child's tag name
				l,		// length of DIV list
				lc,		// the element's last child node
				lcn,	// the larst child's tag name
				p = 'p',
				pf = 'pre',
				r = [];	// the method's result

			_Divs = 0;	// release memory (method no longer needed)
			if ((l = d.length)) {
				try {
					do {
						if ((e = d[--l]) &&
						(fc = e.firstChild) &&
						(fcn = fc.tagName.toLowerCase()) &&
						(lc = e.lastChild) &&
						(lcn = lc.tagName.toLowerCase())) {
							if ((pf === fcn) &&
							(p === lcn)) {
								// footer line
								lc._PRE = fc;	// link PRE to P
								r[r.length] = lc;
							} else if ((pf === lcn) &&
							(p === fcn)) {
								// header line
								fc._PRE = lc;	// link PRE to P
								r[r.length] = fc;
							} // if
							// ELSE: unknown markup scheme (i.e. ignore)
						} // if
						d.length = l;	// free mem
					} while (l);
				} catch(X) {
					// return the empty list
				} // try
			} // if

			return r;
		},	// _Ps()
		_r;	// undefined function result

	/**
	 * Swap two class names of the given <tt>O</tt>.
	 *
	 * <p>
	 * This method gets called internally by the <tt>_t()</tt> method.
	 * </p>
	 * @param O Object The document's element whose class is to change.
	 * @param R2d Object A RegEx object matching the CSS class to remove.
	 * @param C2a String The CSS class name to add.
	 * @private
	 * @member syntax_plugin_code
	 */
	function _sw(O, R2d, C2a) {
		R2d.lastIndex = 0;
		if (R2d.test(O.className)) {
			R2d.lastIndex = 0;
			O.className = (C2a) ?
				O.className.replace(R2d, C2a) :
				O.className.replace(R2d, '');
		} else if (C2a) {
			// Old class not set currently
			O.className += C2a;
		} // if
		R2d.lastIndex = 0;
	}	// _sw()

	/**
	 * Toggle the visibility of the associated PRE element.
	 *
	 * <p>
	 * Event handler used by the header/footer P elements.
	 * </p>
	 * @param E Object The current event object.
	 * @private
	 * @member syntax_plugin_code
	 */
	function _t(E) {
		if ((E = E || window.event)) {
			E.cancelBubble = true;
			E.returnValue = false;
		} // if
		if (this.className) {
			if (_reH.test(this.className)) {
				_sw(this._PRE, _reH, _cS);
				_sw(this, _reH, _cS);
			} else {
				_sw(this, _reS, _cH);
				_sw(this._PRE, _reS, _cH);
			} // if
		} else {
			this.className = this._PRE.className = _cH;
		} // if

		return false;	// no further action required
	}	// _t()

	/**
	 * Setup the behaviour.
	 *
	 * <p>
	 * This method is sort of constructor.
	 * It sets up all code blocks marked up by the (PHP)
	 * <tt>syntax_plugin_code</tt> with header/footer lines so that they
	 * toggle the respective PRE's visibility (by means of exchanging
	 * CSS classes).
	 * </p>
	 * @member syntax_plugin_code
	 */
	function ini() {
		if (! _Ps) {
			return;		// something's broken ...
		} // if
		var	d = _Ps(),	// list of header/footer paragraphs
			l = d.length,	// length of P list
			p,			// the currently handled element
			re = /\s*\bHideOnInit\b/ig;	// RegEx to match CSS class

		_Ps = 0;	// release memory
		while (l) {
			if ((p = d[--l]) && (p._PRE)) {
				if (re.test(p.className)) {
					re.lastIndex = 0;
					p._PRE.className += _cH;		// add CSS class
					p.className = p.className.replace(re, _cH);	// dito
				} else {
					p._PRE.className += _cS;	// add CSS class
					p.className += _cS;			// dito
				} // if
				p.onclick = _t;	// assign event handler
				re.lastIndex = 0;	// reset search position
			} // if
		} // while
	}	// ini()

	// Delay the setup until after the document is loaded.
	if ('undefined' !== typeof(window.addEvent)) {
		try {
			window.addEvent(window, 'load', ini);
		} catch(X) {
			// DokuWiki's event library not loaded or broken.
			// Let a background thread do the job:
			window.setTimeout(ini, 512);
		} // try
	} else {
		// Older DokuWiki release: using background thread:
		window.setTimeout(ini, 512);
	} // if

	return _r;
}();	// syntax_plugin_code

/* _EoF_ */
