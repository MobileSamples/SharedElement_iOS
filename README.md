![Excellent Webworld Company Logo](https://eww-wp-new.s3.ap-south-1.amazonaws.com/wp-content/uploads/2021/10/21124036/Excellent-Webworld-logo-svg.jpg)

# SharedElement_iOS

# Overview
Shared Element Transition 

Transitions that occur between different activities and fragments involve the entry and exit of transitions. The entire view hierarchies are interdependent on each other. 

Examples of such transitions are slide transition, fade transition, and explode transition.

* Explode - Moves views in or out from the center of the scene.
* Slide - Moves views in or out from one of the edges of the scene.
* Fade - Adds or removes a view from the scene by changing its opacity.

![Alt Text](https://eww-wp-new.s3.ap-south-1.amazonaws.com/wp-content/uploads/2022/01/11124324/gif-04.gif)

## Requirement
iOS 13.0 to 15.0

## Implementation of Shared Element Transition in iOS
Let’s study step by step how these can be seamlessly implemented in your application. 


### Download the Animator. swift file and include it in your Project.
Make your needed layout. As You can see in my case, I have added an image view in the collection view in the ”ViewController.swift” file. 

### Writing up the Delegates 
In your controller, confirm From & To View Controllers in “UIViewControllerTransitioningDelegate” Methods. As I have written code in the ”ViewController.swift” file to open and close the view.

extension ViewController: UIViewControllerTransitioningDelegate {

// This method will be used for open view.

    func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        guard let firstViewController = presenting as? ViewController,
            let secondViewController = presented as? SecondViewController,
            let selectedCellImageViewSnapshot = selectedCellImageViewSnapshot
            else { return nil }

        animator = Animator(type: .present, firstViewController: firstViewController, secondViewController: secondViewController, selectedCellImageViewSnapshot: selectedCellImageViewSnapshot)
        return animator
    }

// This method will be used for Close view.

    func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        guard let secondViewController = dismissed as? SecondViewController,
            let selectedCellImageViewSnapshot = selectedCellImageViewSnapshot
            else { return nil }

        animator = Animator(type: .dismiss, firstViewController: self, secondViewController: secondViewController, selectedCellImageViewSnapshot: selectedCellImageViewSnapshot)
        return animator
    }

### Delegate Protocol 

On the Image tab, we will pass the image model (in our case data manager Modal) to another controller.

	func presentSecondViewController(with data: CellData) 
 	{
       		 let secondViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        	secondViewController.transitioningDelegate = self
        	secondViewController.modalPresentationStyle = .fullScreen
        	secondViewController.data = data
        	present(secondViewController, animated: true, completion: nil)
    	} 


### Set the Image

Set Image and other data in the second view controller that we have sent from the previous controller.

var data: CellData!

    @IBOutlet private(set) var locationImageView: UIImageView!
    @IBOutlet private(set) var locationLabel: UILabel!
    @IBOutlet private(set) var DiscriptionLabel: UILabel!
    @IBOutlet private(set) var closeButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        let cross = #imageLiteral(resourceName: "cross").withRenderingMode(.alwaysTemplate)
        closeButton.setImage(cross, for: .normal)
        closeButton.tintColor = .white
        locationImageView.layer.cornerRadius = 10
        locationImageView.image = data.image
        locationLabel.text = data.title
        DiscriptionLabel.text = data.discription
        setStatusBar()
    }

**Credits:- T**he code is developed by our promising candidate Nishee.

## Support
If you have any questions, issues, or propositions, please create a new issue in this repository.
If you any questions regarding <a href="https://www.excellentwebworld.com/iphone-application-development-services/?utm_source=github&utm_campaign=iphone-app-development">iPhone application development services</a> or want to <a href="https://www.excellentwebworld.com/hire-iphone-app-developers/?utm_source=github&utm_campaign=hire+iphone-developers">hire iphone app developer</a>, then send an email to sales@cleveroad.com or fill out the form on the contact page

