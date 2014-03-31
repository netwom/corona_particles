application =
{
    content =
    {
        width = 640,
        height = 1136,
        scale = "letterbox",
        fps = 60,
        -- 1.5
        -- 0.75
        imageSuffix =
        {
        	["-small"]= 0.75,
            ["@2x"] = 1.5
            --high-resolution devices (Retina iPad, Kindle Fire HD 9", Nexus 10, etc.) will use @2x-suffixed images
            --devices less than 1200 pixels in width (iPhone4, iPad2, Kindle Fire 7", etc.) will use non-suffixed images
        }
    },
    ads = true,
    debug = true,
}