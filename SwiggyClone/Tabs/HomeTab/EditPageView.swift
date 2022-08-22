//
//  EditPageView.swift
//  SwiggyClone
//
//  Created by Tejesh Singh on 24/07/22.
//

import UIKit

class EditPageView: UIView {

    @IBOutlet var editMainContainer: UIView!
    
    @IBOutlet weak var nameUpdateCancelstck: UIStackView!
    @IBOutlet weak var phoneUpdateEditStck: UIStackView!
    @IBOutlet weak var emailUpdateEditStck: UIStackView!
    
    @IBOutlet weak var nameEditBtn: UIButton!
    @IBOutlet weak var phoneEditBtn: UIButton!
    @IBOutlet weak var emailEditBtn: UIButton!
    
    
    @IBOutlet weak var nameTxtField: HoshiTextField!
    @IBOutlet weak var phoneTxtfield: HoshiTextField!
    @IBOutlet weak var emailTxtField: HoshiTextField!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initView()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initView()
    }
    func initView(){
        Bundle.main.loadNibNamed("EditPageView", owner: self, options: nil)
        addSubview(editMainContainer)
        editMainContainer.frame = self.bounds
        editMainContainer.autoresizingMask = [.flexibleHeight,.flexibleWidth]
    }
    @IBAction func namEditClicked(_ sender: UIButton) {
        nameUpdateCancelstck.isHidden = !nameUpdateCancelstck.isHidden
        nameEditBtn.isHidden = true
        nameTxtField.isEnabled = true
        nameTxtField.becomeFirstResponder()
    }
    @IBAction func phoneEditClicked(_ sender: Any) {
        phoneUpdateEditStck.isHidden = !phoneUpdateEditStck.isHidden
        phoneEditBtn.isHidden = true
        phoneTxtfield.isEnabled = true
        phoneTxtfield.becomeFirstResponder()
    }
    @IBAction func emailEditClicked(_ sender: Any) {
        emailUpdateEditStck.isHidden = !emailUpdateEditStck.isHidden
        emailEditBtn.isHidden = true
        emailTxtField.isEnabled = true
        emailTxtField.becomeFirstResponder()
       
    }
    @IBAction func onNameCancelClicked(_ sender: Any) {
        nameUpdateCancelstck.isHidden = true
        nameEditBtn.isHidden = false
        nameTxtField.isEnabled = false
    }
    @IBAction func onPhoneCancelClicked(_ sender: Any) {
        phoneUpdateEditStck.isHidden = true
        phoneEditBtn.isHidden = false
        phoneTxtfield.isEnabled = false
    }
    @IBAction func onEmailCancelClicked(_ sender: Any) {
        emailUpdateEditStck.isHidden = true
        emailEditBtn.isHidden = false
        emailTxtField.isEnabled = false
    }
   
}
