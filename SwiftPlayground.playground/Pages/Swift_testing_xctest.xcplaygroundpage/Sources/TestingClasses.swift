

public class ProblematicService {
    
    public init() {
        
    }
    
    public func doSomethingThatMightFail(_ error : (_: Error?) -> Void) {
        var e: Error?
        error(e)
    }
    public func startStreaming(_ chunck : (_: String) -> Void) {
        chunck("")
    }
}

public class DataStreamer {
    public init() {
        
    }
    public func startStreaming(_ chunck : (_: String) -> Void) {
        chunck("")
    }
}
public class MyService {
    public init() { }
    
    public func performOperation1(_ : () -> Void) {
    }
    public func performOperation2(_ : () -> Void) {
    }
}
