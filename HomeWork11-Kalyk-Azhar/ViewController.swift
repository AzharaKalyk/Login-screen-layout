import UIKit

class ViewController: UIViewController {
    
    // MARK: - UI Elements
    private lazy var label: UILabel = {
        let label = UILabel()
        label.text = "Login"
        label.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        label.textColor = .darkGray
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private lazy var imageView: UIImageView = {
        let image = UIImage(named: "imageFon")
        let imageView = UIImageView(image: image)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        return imageView
    }()
    
    private lazy var stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 10
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        return stackView
    }()
    
    private lazy var loginText: UITextField = {
        let textField = UITextField()
        textField.textColor = .darkGray
        textField.placeholder = "Your login"
        textField.backgroundColor = .white
        textField.tintColor = .systemGray2
        textField.layer.cornerRadius = 20
        textField.setLeftIcon(UIImage(systemName: "person") ?? UIImage())
        textField.setRightIcon(UIImage(systemName: "checkmark.circle.fill") ?? UIImage())
        textField.translatesAutoresizingMaskIntoConstraints = false
        
        return textField
    }()
    
    
    private lazy var passwordText: UITextField = {
        let textField = UITextField()
        textField.textColor = .darkGray
        textField.placeholder = "Password"
        textField.backgroundColor = .white
        textField.tintColor = .systemGray2
        textField.layer.cornerRadius = 20
        textField.setLeftIcon(UIImage(systemName: "lock.fill") ?? UIImage())
        textField.translatesAutoresizingMaskIntoConstraints = false
        
        return textField
    }()
    
    private lazy var buttonLogin: UIButton = {
        let buttonLogin = UIButton(type: .system)
        buttonLogin.setTitleColor(.white, for: .normal)
        buttonLogin.setTitle("Login", for: .normal)
        buttonLogin.backgroundColor = .systemBlue
        buttonLogin.layer.cornerRadius = 20
        buttonLogin.translatesAutoresizingMaskIntoConstraints = false
        
        return buttonLogin
    }()
    
    private lazy var questionLabel: UILabel = {
        let label = UILabel()
        label.textColor = .darkGray
        label.font = UIFont.systemFont(ofSize: 10)
        label.textAlignment = .center
        label.text = "Forgot your password?"
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private lazy var connectLabel: UILabel = {
        let label = UILabel()
        label.textColor = .darkGray
        label.font = UIFont.systemFont(ofSize: 10)
        label.textAlignment = .center
        label.text = "or connect with"
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    private lazy var lineView1: UIView = {
        let view = UIView()
        view.backgroundColor = .darkGray
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    private lazy var lineView2: UIView = {
        let view = UIView()
        view.backgroundColor = .darkGray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    // MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupView()
        setupHierarchy()
        setupLayout()
    }
    
    // MARK: - Setups
    private func setupView() {
        view.backgroundColor = .white
    }
    
    private func setupHierarchy() {
        view.addSubview(imageView)
        view.addSubview(label)
        view.addSubview(stackView)
        stackView.addArrangedSubview(loginText)
        stackView.addArrangedSubview(passwordText)
        view.addSubview(buttonLogin)
        view.addSubview(questionLabel)
        view.addSubview(connectLabel)
        view.addSubview(lineView1)
        view.addSubview(lineView2)
    }
    
    private func setupLayout() {
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: view.topAnchor),
            imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            imageView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            
            
            loginText.topAnchor.constraint(equalTo:label.bottomAnchor, constant: 200),
            loginText.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 50),
            loginText.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -50),
            loginText.widthAnchor.constraint(equalToConstant: 250),
            loginText.heightAnchor.constraint(equalToConstant: 40),
            
            passwordText.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 50),
            passwordText.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -50),
            passwordText.widthAnchor.constraint(equalToConstant: 250),
            passwordText.heightAnchor.constraint(equalToConstant: 40),
            
            buttonLogin.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            buttonLogin.topAnchor.constraint(equalTo: passwordText.bottomAnchor, constant: 40),
            buttonLogin.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 50),
            buttonLogin.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -50),
            buttonLogin.widthAnchor.constraint(equalToConstant: 250),
            buttonLogin.heightAnchor.constraint(equalToConstant: 40),
            
            questionLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            questionLabel.topAnchor.constraint(equalTo: buttonLogin.bottomAnchor, constant: 20),
            
            connectLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            connectLabel.bottomAnchor.constraint(equalTo: questionLabel.bottomAnchor, constant: 140),
            
            lineView1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            lineView1.trailingAnchor.constraint(equalTo: connectLabel.leadingAnchor, constant: -10),
            lineView1.centerYAnchor.constraint(equalTo: connectLabel.centerYAnchor),
            lineView1.heightAnchor.constraint(equalToConstant: 1),
            
            lineView2.leadingAnchor.constraint(equalTo: connectLabel.trailingAnchor, constant: 10),
            lineView2.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            lineView2.centerYAnchor.constraint(equalTo: connectLabel.centerYAnchor),
            lineView2.heightAnchor.constraint(equalToConstant: 1)
        ])
    }
}

