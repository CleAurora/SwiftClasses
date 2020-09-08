import UIKit

class Supermercado{
    var estaAberto: Bool
    var nome: String
    var franquia: String
    var endereco: String
    var telefone: String
    var email: String
    var temEstacionamento: Bool
    var site: String
    
    init(estaAberto: Bool, nome: String, franquia: String, endereco: String, telefone: String, email: String, temEstacionamento: Bool, site: String  ) {
        self.estaAberto = estaAberto
        self.nome = nome
        self.franquia = franquia
        self.endereco = endereco
        self.telefone = telefone
        self.email = email
        self.temEstacionamento = temEstacionamento
        self.site = site
    }
    
    func abrir(){
        print("Aberto")
    }
    
    func fechar(){
        print("Fechado")
    }
    
    func atender(){
        print("Atendido")
    }
    
    func ajeitarEstoque(){
        print("Estoque ok")
    }
}

class Pessoa{
    var nome: String
    var cpf: String
    var dataNascimento: Date
    var endereco: String
    var telefone: String
    var email: String
    
    init(nome: String, cpf: String, dataNascimento: Date, endereco: String, telefone: String, email: String) {
        self.nome = nome
        self.cpf = cpf
        self.dataNascimento = dataNascimento
        self.endereco = endereco
        self.telefone = telefone
        self.email = email
    }
    
    func trabalhar(){
        print("trabalhou")
    }
    
    func andar(){
        print("andou")
    }
    
    func comer(){
        print("comeu")
    }
    
    func dormir(){
        print("dormiu")
    }
}

class Funcionario: Pessoa{
    var cargo: String
    var salario: Float
    
    init(pessoa: Pessoa, Cargo: String, salario: Float) {
        self.cargo = Cargo
        self.salario = salario
        super.init(nome: pessoa.nome, cpf: pessoa.cpf, dataNascimento: pessoa.dataNascimento, endereco: pessoa.endereco, telefone: pessoa.telefone, email: pessoa.email)
    }
    
    init(nome: String, cpf: String, dataNascimento: Date, endereco: String, telefone: String, email: String, cargo: String, salario: Float){
        self.cargo = cargo
        self.salario = salario
        super.init(nome: nome, cpf: cpf, dataNascimento: dataNascimento, endereco: endereco, telefone: telefone, email: email)
    }
    
    func baterOPonto(){
        print("PontoBatido")
    }
    
    func organizarProdutos(){
        print("Produtos Organizados")
    }
    
    func cobrar(){
        print("Cobrado")
    }
    
    func receber(){
        print("Salário recebido")
    }
    
    func oferecerDescontos(){
        print("Descontos ofertados")
    }
    
    func verificarValidadeDeProdutos(){
        print("Validade Verificada")
    }
    
    func reporProdutos(){
        print("Produto Resposto")
    }
    
    func venderProdutos(){
        print("Produto Vendido")
    }
    
    func organizarCarrinhos(){
        print("CarrinhosOrganizados")
    }
}

class Cliente:Pessoa{
    var eClienteVip: Bool
    
    init( pessoa: Pessoa, eClienteVip: Bool) {
        self.eClienteVip = eClienteVip
        super.init(nome: pessoa.nome, cpf: pessoa.cpf, dataNascimento: pessoa.dataNascimento, endereco: pessoa.endereco, telefone: pessoa.telefone, email: pessoa.email)
    }
    
    init(nome: String, cpf: String, dataNascimento: Date, endereco: String, telefone: String, email: String, eClienteVip:Bool) {
        self.eClienteVip = eClienteVip
        super.init(nome: nome, cpf: cpf, dataNascimento: dataNascimento, endereco: endereco, telefone: telefone, email: email)
    }
    
    func irAtéOSupermercado(){
        print("Chegou ao supermercado")
    }
    
    func pegarUmCarrinho(){
        print("Está com o carrinho")
    }
    
    func comprarProdutos(){
        print("Produtos Comprados")
    }
    
    func receberDescontos(){
        print("Descontos Recebidos")
    }
    
    func devolverOCarrinho(){
        print("Carrinho devolvido")
    }
}

class Produto{
    var nome: String
    var preco: Float
    var categoria: String
    var identificador: String
    var emEstoque: Bool
    var validade: Date
    
    init(nome: String, preco: Float, categoria: String, identificador: String, emEstoque: Bool, validade: Date){
        self.categoria = categoria
        self.emEstoque = emEstoque
        self.identificador = identificador
        self.nome = nome
        self.preco = preco
        self.validade = validade
    }
    
    func armazenar(){
        print("Armazenado")
    }
    
    func destacar(){
        print("Exposto no corredor principal")
    }
}


extension Date {
    init(year: Int, month: Int, day: Int) {
        let formatter : DateFormatter = DateFormatter()
        formatter.dateFormat = "yyyy/MM/dd"
        
        self = formatter.date(from: "\(year)/\(month)/\(day)") ?? Date()
    }
}

let rafaelDataDeNascimento = Date(year: 1995, month: 10, day: 11)

let rafael = Pessoa(nome: "Rafael Da Silva Ferreira", cpf: "12312312355", dataNascimento: rafaelDataDeNascimento, endereco: "Rua A 12", telefone: "999678345", email: "rafael@email.com")

print (rafael.dataNascimento)

let narleiDataDeNascimento = Date(year: 1993, month: 10, day: 14)
let narlei = Funcionario(nome: "Narlei", cpf: "33355566699", dataNascimento: narleiDataDeNascimento, endereco: "Rua X 88", telefone: "999888777", email: "narlei@email.com", cargo: "Gerente", salario: 10000)
