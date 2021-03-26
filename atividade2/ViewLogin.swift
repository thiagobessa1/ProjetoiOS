//
//  ViewLogin.swift
//  atividade2
//
//  Created by TBessa on 25/03/21.
//

import UIKit


class Login: UIView {
    override init(frame: CGRect){
        super.init(frame: frame)
        self.backgroundColor = .white
    
        setupViews()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews() {
        self.addSubview(background)
        self.addSubview(logo)

    }
    
    
    
    let background: UIImageView = {
        let back = UIImageView(frame: CGRect(x: 0, y: 0, width: 600, height: 200))
        back.image = UIImage(named: "background")
        return back
    }()
    
    let logo: UIImageView = {
        let imagem = UIImageView(frame: CGRect(x: 168, y: 105, width: 75, height: 75))
        imagem.image = UIImage(named: "b-logo")
        imagem.translatesAutoresizingMaskIntoConstraints = false
        return imagem
    }()
  
}

extension UIImageView{
    func imagemViewCorners(){
        layer.cornerRadius = 10
        layer.borderWidth = 1.0
        layer.masksToBounds = true
    }
    
}

