import Scenes
import Igis

/*
 This class is responsible for rendering the background.
 */

class Background : RenderableEntity {
    var rectangle : Rectangle
    
    init() {
        rectangle = Rectangle(rect:Rect.zero, fillMode:.clear)
        
        // Using a meaningful name can be helpful for debugging
        super.init(name:"Background")
    }

    override func setup(canvasSize:Size, canvas:Canvas) {
        rectangle.rect.size = canvasSize
    }

    override func render(canvas:Canvas) {
        canvas.render(rectangle)
    }
}
