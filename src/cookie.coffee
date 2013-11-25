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
    # Set a cookie value
    #
    # @namespace
    # @name setCookie
    # @methodOf window.cookie
    #
    # @param name   (string)    The name of the cookie to set
    # @param value  (string)    The value of the cookie to set
    # @param days   (number)    The number of days for this cookie to expire
    #
    setCookie = ( name, value, days ) ->
        expires = ""

        if ( days )
            date = new Date()
            date.setTime( date.getTime() + ( days * 24 * 60 * 60 * 1000 ) )
            expires = "; expires=" + date.toGMTString()

        document.cookie = name + "=" + value + expires + "; path=/"

    # Get the value of a cookie
    #
    # @namespace
    # @name getCookie
    # @methodOf window.cookie
    #
    # @param name   (string)    The name of the cookie to get the value of
    #
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

    # Delete (expire) a cookie
    #
    # @namespace
    # @name deleteCookie
    # @methodOf window.cookie
    #
    # @param name   (string)    The name of the cookie to delete / expire
    #
    deleteCookie = ( name ) ->
        setCookie( name, "", -1 )

    ppkCookie =
        "set":    setCookie
        "get":    getCookie
        "delete": deleteCookie
)