
function setup()
    -- setup display and drawing functions
    
    supportedOrientations(LANDSCAPE_ANY)
    --display mode fullscreen
    noFill()
    noSmooth()
    noStroke()
    pushStyle()
    
    -- get the width and height of the device you are on
    -- then divide in 1/2 to get device center position
    beetle = SpriteObject("SpaceCute:Beetle Ship", vec2(WIDTH/2, HEIGHT/2+ 300))
    planet = SpriteObject("SpaceCute:Planet", vec2(WIDTH/2, HEIGHT/2-200))
end

-- This function gets called once every frame
function touched(touch) 
    --local variables
    
    beetle: touched(touch)
    planet: touched(touch)
 
    if (beetle:isTouching(planet) == true) then
        print("is touching")
        
    else
        print("not touching")

    end
        end  
 
-- This function gets called once every frame
function draw() 
    --local variables
    background(0, 0, 0, 255)
    sprite("Platformer Art:Block Special Brick", 512, 384, 1024, 768)
  beetle: draw()    
planet: draw()
end