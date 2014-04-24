# madlib-browser-querystring [![Build Status](https://travis-ci.org/Qwerios/madlib-browser-querystring.svg?branch=master)](https://travis-ci.org/Qwerios/madlib-browser-querystring)
Cookie module based on [ppk's cookie code](http://www.quirksmode.org/js/cookies.html)


## acknowledgments
The Marviq Application Development library (aka madlib) was developed by me when I was working at Marviq. They were cool enough to let me publish it using my personal github account instead of the company account. We decided to open source it for our mutual benefit and to ensure future updates should I decide to leave the company.


## philosophy
JavaScript is the language of the web. Wouldn't it be nice if we could stop having to rewrite (most) of our code for all those web connected platforms running on JavaScript? That is what madLib hopes to achieve. The focus of madLib is to have the same old boring stuff ready made for multiple platforms. Write your core application logic once using modules and never worry about the basics stuff again. Basics including XHR, XML, JSON, host mappings, settings, storage, etcetera. The idea is to use the tried and proven frameworks where available and use madlib based modules as the missing link.

Currently madLib is focused on supporting the following platforms:

* Web browsers (IE6+, Chrome, Firefox, Opera)
* Appcelerator/Titanium
* PhoneGap
* NodeJS

NOTE: This module is only useful in a browser or web view environment

## installation
```bash
$ npm install madlib-browser-cookie --save
```

## usage
```javascript
var getQueryString = require( "madlib-browser-querystring" );
var queryString    = getQueryString();
```