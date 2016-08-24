import UIKit
import Quick
import Nimble
@testable import Filla

class LoginViewControllerTest: QuickSpec {
    
    var viewController: LoginViewController!
    
    override func spec() {
        
        var viewController: LoginViewController!
        beforeEach {
            
            let storyboard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
            viewController = storyboard.instantiateInitialViewController() as! LoginViewController
            
            UIApplication.sharedApplication().keyWindow!.rootViewController = viewController
        }
        
        describe(".viewDidLoad()") {
            beforeEach {
                
                // Access the view to trigger BananaViewController.viewDidLoad().
                let _ =  viewController.view
            }
            
            it("It should contains labels, text inputs, etc.") {
                
                // Since the controls are only initialized when the view is loaded, this
                // would fail if we didn't access the view in the `beforeEach` above.
                expect(viewController.username).notTo(beNil())
                expect(viewController.usernameLabel).notTo(beNil())
                expect(viewController.password).notTo(beNil())
                expect(viewController.passwordLabel).notTo(beNil())
                expect(viewController.errorMessage).notTo(beNil())
                expect(viewController.login).notTo(beNil())
                expect(viewController.resetPassword).notTo(beNil())
            }
        }
        
        describe("dynamic text rendering", {
            
            beforeEach {
                
                // Triggers .viewDidLoad(), .viewWillAppear(), and .viewDidAppear() events.
                viewController.beginAppearanceTransition(true, animated: false)
                viewController.endAppearanceTransition()
            }

            it("It should load resources from a locale file") {
                
                expect(viewController.usernameLabel.text).toEventuallyNot(contain("Label"))
                expect(viewController.passwordLabel.text).toEventuallyNot(contain("Label"))
                expect(viewController.resetPassword.text).toEventuallyNot(contain("Label"))
                expect(viewController.errorMessage.text).toEventuallyNot(contain("Label"))
            }
        })
        
        describe("Input field validation") {
            beforeEach {
                
                // Access the view to trigger BananaViewController.viewDidLoad().
                let _ =  viewController.view
            }
            
            it("It should render an error message when username and password are missing"){
                
                viewController.login.sendActionsForControlEvents(UIControlEvents.TouchUpInside)
                
                expect(viewController.errorMessage.text?.characters.count).toEventually(beGreaterThan(0), timeout: 1)
            }
            
            it("It should render an error message the password is missing"){
                
                viewController.username.text = "Hannibal"
                viewController.login.sendActionsForControlEvents(UIControlEvents.TouchUpInside)
                
                expect(viewController.errorMessage.text?.characters.count).toEventually(beGreaterThan(0), timeout: 1)
            }
            
            it("It should render an error message the username is missing"){
                
                viewController.password.text = "The cannibal"
                viewController.login.sendActionsForControlEvents(UIControlEvents.TouchUpInside)
                
                expect(viewController.errorMessage.text?.characters.count).toEventually(beGreaterThan(0), timeout: 1)
            }
            
            it("It should not render any error message if the username and password fiels are filled"){
                
                viewController.username.text = "Hannibal"
                viewController.password.text = "The cannibal"
                viewController.login.sendActionsForControlEvents(UIControlEvents.TouchUpInside)
                
                expect(viewController.errorMessage.text?.characters.count).toEventually(be(0))
            }
        }
        
        describe("Input field validation") {
            beforeEach {
                
                // Access the view to trigger BananaViewController.viewDidLoad().
                let _ =  viewController.view
            }
        }
        
        describe(".viewWillDisappear()") {
            beforeEach {
                // Method #3: Directly call the lifecycle event.
                //   viewController.viewWillDisappear(false)
            }
            // ...
        }
    }
}
