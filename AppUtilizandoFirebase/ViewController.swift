//
//  ViewController.swift
//  AppUtilizandoFirebase
//
//  Created by Bruno Bengochea on 30/01/19.
//  Copyright © 2019 Curso IOS. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {

    let firebase = Database.database().reference()
    @IBOutlet weak var textoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //deslogar
//        do{
//            try Firebase.Auth.auth().signOut()
//        }catch{
//            print("Erro ao deslogar o usuario")
//        }
        
        //logar o usuário
//        do{
//            try Firebase.Auth.auth().signIn(withEmail: "bruno@gmail.com", password: "bruno123") { (usuario, erro) in
//                if erro == nil {
//                    print("Sucesso ao logar o usuario")
//                }else{
//                    print("Erro ao logar o usuario: \(erro?.localizedDescription) ")
//                }
//            }
//        }catch{
//            print("Erro ao deslogar o usuario")
//        }
        
        Firebase.Auth.auth().addStateDidChangeListener { (Auth, usuario) in
            if let usuariologado = usuario {
                print("Usuario está logado!! " + String(describing: usuariologado.email))
            }else{
                print("Usuario não está logado")
            }
        }
        
//        criação usuário
//        Firebase.Auth.auth().createUser(withEmail: "bruno@gmail.com", password: "bruno123") { (usuario, erro) in
//            if erro == nil {
//                print("Sucesso")
//            }else{
//                print("Erro ao cadastrar o usuário: \(erro?.localizedDescription) ")
//            }
//        }
//        Firebase.Auth.auth().addStateDidChangeListener { (Auth, usuario) in
//            if let usuariologado = usuario {
//                print("Usuário está logado!! " + String(describing: usuariologado.email))
//            }else{
//                print("Usuario não está logado")
//            }
//        }
        
        //inserindo / removendo
//        let pontuacao = firebase.child("pontuacao")
//        pontuacao.child("valor").setValue(100)
//        let usuario = firebase.child("usuarios")
//        usuario.child("002").child("nome").setValue("Ana")
//        usuario.removeValue()
        
        //recuperar dados
//        let valorDaPontuacao = firebase.child("pontuacao").child("valor")
//        valorDaPontuacao.observe(DataEventType.value, with: {(dados) in
////            print(dados)
//            let ponto = dados.value as! Double
////            print(ponto)
//            self.textoLabel.text = String(format:"%.1f", ponto)
//
//        })
    }


}

