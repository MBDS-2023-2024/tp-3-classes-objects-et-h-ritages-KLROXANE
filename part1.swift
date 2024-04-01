class Rectangle {
  var longueur: Double
  var largeur: Double
  static var nombreDeRectangles = 0 

  init(longueur: Double, largeur: Double) {
      self.longueur = longueur
      self.largeur = largeur
      Rectangle.nombreDeRectangles += 1
  }

  func perimeter() -> Double {
      return 2 * (longueur + largeur)
  }

  func area() -> Double {
      return longueur * largeur
  }
}

// Création de trois rectangles
let rectangle1 = Rectangle(longueur: 4, largeur: 5)
let rectangle2 = Rectangle(longueur: 3, largeur: 6)
let rectangle3 = Rectangle(longueur: 7, largeur: 2)

// Liste contenant les rectangles
var rectangles = [rectangle1, rectangle2, rectangle3]

// Fonction pour ordonner la liste en fonction de la surface
func listeArea(_ rectangles: [Rectangle]) -> [Rectangle] {
  return rectangles.sorted { $0.area() < $1.area() }
}

// Fonction pour ordonner la liste en fonction du périmètre
func listePerimeter(_ rectangles: [Rectangle]) -> [Rectangle] {
  return rectangles.sorted { $0.perimeter() < $1.perimeter() }
}

// Ordonner la liste en fonction de la surface
rectangles = listeArea(rectangles)
print("Rectangles triés par surface:")
for rectangle in rectangles {
  print("Surface: \(rectangle.area()), Périmètre: \(rectangle.perimeter())")
}

// Ordonner la liste en fonction du périmètre
rectangles = listePerimeter(rectangles)
print("\nRectangles triés par périmètre:")
for rectangle in rectangles {
  print("Surface: \(rectangle.area()), Périmètre: \(rectangle.perimeter())")
}

// Afficher le nombre de rectangles créés
print("\nNombre de rectangles créés: \(Rectangle.nombreDeRectangles)")
