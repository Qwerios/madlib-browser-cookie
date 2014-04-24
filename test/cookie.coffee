# Fake a global window object with a url
#
GLOBAL.document =
    cookie: ""

chai          = require "chai"
cookieMonster = require "../lib/cookie.js"

describe( "cookie", () ->
    describe( "#set()", () ->
        cookieMonster.set( "foo", "bar" )

        it( "Cookie should be set", () ->
            chai.expect( cookieMonster.get( "foo" ) ).to.eql( "bar" )
        )
    )
)