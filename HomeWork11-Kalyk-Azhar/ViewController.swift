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
            passwordText.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
}

