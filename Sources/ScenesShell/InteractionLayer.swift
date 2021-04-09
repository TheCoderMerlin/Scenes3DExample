import Scenes
import Scenes3D

/*
 This class is responsible for the interaction Layer.
 Internally, it maintains the RenderableEntities for this layer.
 */

class InteractionLayer : Layer3D {
    let entity3D = RenderableEntity3D(name:"entity3D")
    let object3D = Cube(position:Vector3(x:-300, y:-300, z:10), rotation:Vector3(x:0, y:0, z:30), size:Vector3(x:200, y:200, z:5))
    let myCamera = Camera()
    
    init() {
        // Using a meaningful name can be helpful for debugging
        super.init(name:"Interaction")

        entity3D.insert(object3D:object3D)
        
        setCamera(camera:myCamera)
        // We insert our RenderableEntities in the constructor
        insert(entity3D:entity3D)
    }
}

