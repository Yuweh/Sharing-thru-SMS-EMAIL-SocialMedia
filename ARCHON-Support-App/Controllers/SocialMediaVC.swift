//
//  SocialMediaVC.swift
//  ARCHON-Prototype1
//
//  Created by Francis Jemuel Bergonia on 22/11/2017.
//  Copyright © 2017 Francis Jemuel Bergonia. All rights reserved.
//

import UIKit
import Social
import MessageUI

class SocialMediaVC: UIViewController {

    //MARK: Properties
    
    @IBOutlet weak var imageView: UIImageView!
    
    
    //MARK: Standard Functions
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //MARK: Implemented Standard Buttons
    
 
    @IBAction func facebook(_ sender: Any) {
        //SLServiceTypeFacebook was deprecated at iOS11, must look for alternatives - just switched to iOS 10 :D
        let facebookShare = SLComposeViewController(forServiceType: SLServiceTypeFacebook)
        
        if let facebookShare = facebookShare
        {
            facebookShare.add(imageView.image!)
            //
            
            present(facebookShare, animated: true)
        }
        
    }
    @IBAction func twitter(_ sender: Any) {
        //SLServiceTypeFacebook was deprecated at iOS11, must look for alternatives - just switched to iOS 10 :D
        let twitterShare = SLComposeViewController(forServiceType: SLServiceTypeTwitter)
        
        if let twitterShare = twitterShare
        {
            twitterShare.add(imageView.image!)
            //
            
            present(twitterShare, animated: true)
        }
    }
    @IBAction func email(_ sender: Any) {
        if MFMailComposeViewController.canSendMail() {
            let emailVC = MFMailComposeViewController()
            emailVC.mailComposeDelegate = self as! MFMailComposeViewControllerDelegate
            emailVC.setSubject("Shared thru Archon App")
            emailVC.setToRecipients(["anamarie.andal@archon-cssi.com"])
            //        emailVC.setMessageBody(textview.text, isHTML: true)
            
            present(emailVC, animated: true)
        }
    }
    @IBAction func sms(_ sender: Any) {
    }
    @IBAction func others(_ sender: Any) {
        //this code use UIActivityViewController
        let shareVC = UIActivityViewController(activityItems: [imageView.image!], applicationActivities: [])
        present(shareVC, animated: true)
        
    }
    
    
}
