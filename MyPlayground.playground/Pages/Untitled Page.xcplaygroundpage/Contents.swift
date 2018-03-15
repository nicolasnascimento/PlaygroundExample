//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    
    var imagem: UIImageView!
    
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white

        let label = UILabel()
        label.frame = CGRect(x: 150, y: 200, width: 200, height: 20)
        label.text = "Hello World!"
        label.textColor = .black

        view.addSubview(label)
        
        imagem = UIImageView(image: UIImage(named: "teste.jpg"))
        imagem.frame = CGRect(x: 200, y: 200, width: 100, height: 100)
        
        view.addSubview(imagem)
        
        
        let button = UIButton(type: .system)
        button.setTitle("Click", for: .normal)
        button.frame = CGRect(x: 100, y: 300, width: 100, height: 100)
        
        button.addTarget(self, action: #selector(self.buttonClicked), for: .touchUpInside)
        
        view.addSubview(button)
        
        self.view = view
    }
    
    
    @objc func buttonClicked() {
        print("Clickado")
        
        imagem.frame.origin.y += 10
        imagem.image = UIImage(named: "teste2.jpg")
        
        let testeVC = TesteViewController()
        
        PlaygroundPage.current.liveView = testeVC
        
    }
}

// Exemplo de componentes

public class TesteViewController: UIViewController {
    
    public override func loadView() {
        
    }
    
}

// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
