public struct simplestruct {
    public private(set) var text = "Hello, World!"
    public var simplevar: String

    public init(simplevar: String) {
        self.simplevar = simplevar
    }
    
    public mutating func change(text newtext: String) {
        text = newtext
    }
}
