import UIKit

extension UITextField {
    func setLeftIcon(_ image: UIImage) {
        let iconView = UIImageView(frame: CGRect(x: 20, y: 5, width: 20, height: 20))
        iconView.image = image
        let iconContainerView: UIView = UIView (frame: CGRect(x:20, y: 0, width: 70, height: 30))
        iconContainerView.addSubview(iconView)
        leftView = iconContainerView
        leftViewMode = .always
    }
    func setRightIcon(_ image: UIImage) {
         let iconView = UIImageView(frame: CGRect(x: 0, y: 5, width: 20, height: 20))
         iconView.image = image
         let iconContainerView: UIView = UIView(frame: CGRect(x: 0, y: 0, width: 45, height: 30))
         iconContainerView.addSubview(iconView)
         rightView = iconContainerView
         rightViewMode = .always
     }
}
