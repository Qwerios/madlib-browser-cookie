(function() {
  (function(factory) {
    if (typeof exports === "object") {
      return module.exports = factory();
    } else if (typeof define === "function" && define.amd) {
      return define([], factory);
    }
  })(function() {
    var deleteCookie, getCookie, ppkCookie, setCookie;
    setCookie = function(name, value, days) {
      var date, expires;
      expires = "";
      if (days) {
        date = new Date();
        date.setTime(date.getTime() + (days * 24 * 60 * 60 * 1000));
        expires = "; expires=" + date.toGMTString();
      }
      return document.cookie = name + "=" + value + expires + "; path=/";
    };
    getCookie = function(name) {
      var cookie, cookies, i, lookup, result, _i, _len;
      result = null;
      lookup = name + "=";
      cookies = document.cookie.split(";");
      for (i = _i = 0, _len = cookies.length; _i < _len; i = ++_i) {
        cookie = cookies[i];
        while (cookie.charAt(0) === " ") {
          cookie = cookie.substring(1, cookie.length);
        }
        if (cookie.indexOf(lookup) === 0) {
          result = cookie.substring(lookup.length, cookie.length);
        }
      }
      return result;
    };
    deleteCookie = function(name) {
      return setCookie(name, "", -1);
    };
    return ppkCookie = {
      "set": setCookie,
      "get": getCookie,
      "delete": deleteCookie
    };
  });

}).call(this);
