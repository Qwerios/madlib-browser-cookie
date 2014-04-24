# Cookie module based on ppk cookie code
#
# http://www.quirksmode.org/js/cookies.html
#
( ( factory ) ->
    if typeof exports is "object"
        module.exports = factory(
        )
    else if typeof define is "function" and define.amd
        define( [
        ], factory )

)( () ->
    setCookie = ( name, value, days ) ->
        expires = ""

        if ( days )
            date = new Date()
            date.setTime( date.getTime() + ( days * 24 * 60 * 60 * 1000 ) )
            expires = "; expires=" + date.toGMTString()

        document.cookie = name + "=" + value + expires + "; path=/"

    getCookie = ( name ) ->
        result  = null
        lookup  = name + "="
        cookies = document.cookie.split( ";" )

        for cookie, i in cookies
            while ( cookie.charAt( 0 ) is " " )
                cookie = cookie.substring( 1, cookie.length )

            if ( cookie.indexOf( lookup ) is 0 )
                result = cookie.substring( lookup.length, cookie.length )

        return result

    deleteCookie = ( name ) ->
        setCookie( name, "", -1 )

    ###*
    #   A small set of utility functions for working with cookies
    #
    #   @author     mdoeswijk
    #   @module     ppkCookie
    #   @version    0.1
    ###
    ppkCookie =
        ###*
        #   Set a cookie value
        #
        #   @function set
        #   @param {String}     name            The name of the cookie
        #   @param {String}     value           The value of the cookie
        #   @param {Number}     days            In how many days should the cookie expire
        #
        #   @return None
        #
        ###
        "set":    setCookie

        ###*
        #   Retrieves a cookie value
        #
        #   @function get
        #   @param {String}     name            The name of the cookie
        #
        #   @return None
        #
        ###
        "get":    getCookie

        ###*
        #   Expires a cookie
        #
        #   @function delete
        #   @param {String}     name            The name of the cookie
        #
        #   @return None
        #
        ###
        "delete": deleteCookie
)