--
--  main.lua
--  Appsee Sample App
--
--  Copyright (c) 2016 Corona Labs Inc. All rights reserved.
--

local appsee = require( "plugin.appsee" )
local widget = require( "widget" )

----------------------- 
-- Setup
----------------------- 
display.setStatusBar( display.HiddenStatusBar )
display.setDefault( "background", 1 )

local apiKey = "0768a03a6bd0479c930b07ac8b84df70"
print( "Using " .. apiKey )


----------------------- 
-- UI
----------------------- 
local appseeLogo = display.newImage( "appseelogo.png" )
appseeLogo.anchorY = 0
appseeLogo.x, appseeLogo.y = display.contentCenterX, 5
appseeLogo:scale( 0.1, 0.1 )

local subTitle = display.newText {
    text = "plugin for Corona SDK",
    x = display.contentCenterX,
    y = 95,
    font = display.systemFont,
    fontSize = 20
}
subTitle:setTextColor( 0.2, 0.2, 0.2 )

native.showAlert("Appsee testing", "Testing Corona Plugin", {"OK"})

appsee.init(apiKey)
