import UIKit

/// A custom `UICollectionViewReusableView` subclass used to display a
/// view that indicates the currently selected cell. You can subclass
/// this type if you need further customization; just override the
/// `indicatorClass` property in `PagingViewController`.
open class PagingIndicatorView: UICollectionReusableView {
  
  override open func apply(_ layoutAttributes: UICollectionViewLayoutAttributes) {
    super.apply(layoutAttributes)
    if let attributes = layoutAttributes as? PagingIndicatorLayoutAttributes {
        backgroundColor = .clear
        
        let centerView = UIView()
        centerView.backgroundColor = attributes.backgroundColor
        centerView.translatesAutoresizingMaskIntoConstraints = false
        centerView.layer.cornerRadius = frame.height / 2
        addSubview(centerView)
        
        NSLayoutConstraint.activate([
            centerView.centerXAnchor.constraint(equalTo: centerXAnchor),
            centerView.centerYAnchor.constraint(equalTo: centerYAnchor),
            centerView.heightAnchor.constraint(equalToConstant: frame.height),
            centerView.widthAnchor.constraint(equalToConstant: 18)
        ])
        layoutIfNeeded()
    }
  }
  
}
