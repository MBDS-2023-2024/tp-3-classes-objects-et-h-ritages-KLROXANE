protocol Shape {
    func area() -> Double
    func perimeter() -> Double
}

class Rectangle: Shape {
    var longueur: Double
    var largeur: Double

    init(longueur: Double, largeur: Double) {
        self.longueur = longueur
        self.largeur = largeur
    }

    func perimeter() -> Double {
        return 2 * (longueur + largeur)
    }

    func area() -> Double {
        return longueur * largeur
    }
}

class Triangle: Shape {
    var base: Double
    var height: Double
    var sideA: Double
    var sideB: Double
    var sideC: Double

    init(base: Double, height: Double, sideA: Double, sideB: Double, sideC: Double) {
        self.base = base
        self.height = height
        self.sideA = sideA
        self.sideB = sideB
        self.sideC = sideC
    }

    func perimeter() -> Double {
        return sideA + sideB + sideC
    }

    func area() -> Double {
        return 0.5 * base * height
    }
}

class Circle: Shape {
    var radius: Double

    init(radius: Double) {
        self.radius = radius
    }

    func perimeter() -> Double {
        return 2 * Double.pi * radius
    }

    func area() -> Double {
        return Double.pi * radius * radius
    }
}

// Créer une liste contenant trois cercles, deux rectangles et un carré
var shapes: [Shape] = [
    Circle(radius: 5),
    Circle(radius: 3),
    Circle(radius: 7),
    Rectangle(longueur: 4, largeur: 5),
    Rectangle(longueur: 3, largeur: 6),
    Rectangle(longueur: 7, largeur: 2),
    Triangle(base: 4, height: 3, sideA: 3, sideB: 4, sideC: 5)
]

// Parcourir la liste et afficher les informations pour chaque élément
for shape in shapes {
    if let rectangle = shape as? Rectangle {
        print("\nJe suis un rectangle, ma longueur est \(rectangle.longueur), ma largeur est \(rectangle.largeur), ma surface est \(rectangle.area()), et mon périmètre est \(rectangle.perimeter())")
    } else if let circle = shape as? Circle {
        print("\nJe suis un cercle, mon rayon est \(circle.radius), ma surface est \(circle.area()), et mon périmètre est \(circle.perimeter())")
    } else if let triangle = shape as? Triangle {
        print("\nJe suis un triangle, ma base est \(triangle.base), ma hauteur est \(triangle.height), ma surface est \(triangle.area()), et mon périmètre est \(triangle.perimeter())")
    }
}
