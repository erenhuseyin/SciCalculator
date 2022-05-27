//
//  ViewController.swift
//  SciCalculator
//
//  Created by User on 20.05.2022.
//
import Foundation
import UIKit
import Numerics
import Darwin

class ViewController: UIViewController{
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lbl.text = ""
        virgulBtnOutlet.isHidden = false
        
        
    }
    
    
    override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
        }
    
    
    
    @IBOutlet weak var lbl: UILabel!
    @IBOutlet weak var virgulBtnOutlet: UIButton!
    
    var op =  ""
        var sayi1 = ""
        var sayi2 = ""
        var sonuç = 0.0
        var sonuçint = 0
        var sonuçinttodouble = 0.0
        var s1 = 0.0
        var s2 = 0.0
        var işlem = ""
        var pi = Double.pi
        var memory = 0.0
        var e = Darwin.M_E
        var error = "error"

    //tanımlanan sayılar
    @IBAction func btn0(_ sender: Any) {
        lbl.text = lbl.text! + "0"
    }
    @IBAction func btn00(_ sender: Any) {
        lbl.text = lbl.text! + "00"
    }
    @IBAction func btn1(_ sender: Any) {
        lbl.text = lbl.text! + "1"
    }
    @IBAction func btn2(_ sender: Any) {
        lbl.text = lbl.text! + "2"
    }
    @IBAction func btn3(_ sender: Any) {
        lbl.text = lbl.text! + "3"
    }
    @IBAction func btn4(_ sender: Any) {
        lbl.text = lbl.text! + "4"
    }
    @IBAction func btn5(_ sender: Any) {
        lbl.text = lbl.text! + "5"
    }
    @IBAction func btn6(_ sender: Any) {
        lbl.text = lbl.text! + "6"
    }
    @IBAction func btn7(_ sender: Any) {
        lbl.text = lbl.text! + "7"
    }
    @IBAction func btn8(_ sender: Any) {
        lbl.text = lbl.text! + "8"
    }
    @IBAction func btn9(_ sender: Any) {
        lbl.text = lbl.text! + "9"
    }
    @IBAction func btnLog(_ sender: Any) {
        if(lbl.text == error){
            lbl.text = ""
        }else if(lbl.text != "" && lbl.text != nil){
            
        
            if(sayi1 == ""){
                sayi1 = lbl.text!
                s1 = Double(sayi1)!
                s1 = log(s1)
                lbl.text = String(s1)
                virgulBtnOutlet.isHidden = true
            }
        
            else if(sayi2 == ""){
                sayi2 = lbl.text!
                s2 = Double(sayi2)!
                s2 = log(s2)
                lbl.text = String(s2)
                virgulBtnOutlet.isHidden = true
            
            }else{
                return()
            }
        }
        else{
            lbl.text = ""
        }
    }
    
    @IBAction func btnpi(_ sender: Any) {
        lbl.text = lbl.text! + String(Double.pi)
    }
    @IBAction func btnE(_ sender: Any) {
        lbl.text = lbl.text! + String(e)
    }
    @IBAction func clrBtn(_ sender: Any) {
        self.viewDidLoad()
        sayi1 = ""
        sayi2 = ""
        sonuç = 0.0
        sonuçint = 0
        sonuçinttodouble = 0.0
        s1 = 0.0
        s2 = 0.0
        işlem = ""
    }
    @IBAction func btnMemoryClr(_ sender: Any) {
        memory = 0.0
    }
    
    @IBAction func btnMemoryPls(_ sender: Any) {
        if(lbl.text == ""){
            lbl.text=""
        }else{
            sayi1 = lbl.text!
            memory = Double(sayi1)!
            memory = abs(memory)
            lbl.text = ""
        }
    }
    
    @IBAction func btnMemoryNeg(_ sender: Any) {
        if(lbl.text == ""){
            lbl.text=""
        }else{
            sayi1 = lbl.text!
            memory = Double(sayi1)!
            memory = memory * (-1)
            lbl.text = ""
        }
    }
    
    @IBAction func btnMemoryRead(_ sender: Any) {
        lbl.text = lbl.text! + String(memory)
    }
    
    @IBAction func vrglBtn(_ sender: Any) {
        lbl.text = lbl.text! + "."
        virgulBtnOutlet.isHidden = true
    }
    
    @IBAction func btnTersi(_ sender: Any) {
        if(lbl.text == error){
            lbl.text = ""
        }else if(lbl.text != "" && lbl.text != nil){
            
        
            if(sayi1 == ""){
                sayi1 = lbl.text!
                s1 = Double(sayi1)!
                s1 = s1 * (-1)
                lbl.text = String(s1)
                virgulBtnOutlet.isHidden = true
            }
        
            else if(sayi2 == ""){
                sayi2 = lbl.text!
                s2 = Double(sayi2)!
                s2 = s2 * (-1)
                lbl.text = String(s2)
                virgulBtnOutlet.isHidden = true
            
            }else{
                return()
            }
        }
        else{
            lbl.text = ""
        }
    }
    //s1 * (-1)
    @IBAction func btnSin(_ sender: Any) {
        if(lbl.text == error){
            lbl.text = ""
        }else if(lbl.text != "" && lbl.text != nil){
            
        
            if(sayi1 == ""){
                sayi1 = lbl.text!
                s1 = Double(sayi1)!
                s1 = sin(s1)
                lbl.text = String(s1)
                virgulBtnOutlet.isHidden = true
            }
        
            else if(sayi2 == ""){
                sayi2 = lbl.text!
                s2 = Double(sayi2)!
                s2 = sin(s2)
                lbl.text = String(s2)
                virgulBtnOutlet.isHidden = true
            
            }else{
                return()
            }
        }
        else{
            lbl.text = ""
        }
    }
    //
    @IBAction func btnCos(_ sender: Any) {
        if(lbl.text == error){
            lbl.text = ""
        }else if(lbl.text != "" && lbl.text != nil){
            
        
            if(sayi1 == ""){
                sayi1 = lbl.text!
                s1 = Double(sayi1)!
                s1 = cos(s1)
                lbl.text = String(s1)
                virgulBtnOutlet.isHidden = true
            }
        
            else if(sayi2 == ""){
                sayi2 = lbl.text!
                s2 = Double(sayi2)!
                s2 = cos(s2)
                lbl.text = String(s2)
                virgulBtnOutlet.isHidden = true
            
            }else{
                return()
            }
        }
        else{
            lbl.text = ""
        }
    }
    //
    @IBAction func btnTan(_ sender: Any) {
        if(lbl.text == error){
            lbl.text = ""
        }else if(lbl.text != "" && lbl.text != nil){
            
        
            if(sayi1 == ""){
                sayi1 = lbl.text!
                s1 = Double(sayi1)!
                s1 = tan(s1)
                lbl.text = String(s1)
                virgulBtnOutlet.isHidden = true
            }
        
            else if(sayi2 == ""){
                sayi2 = lbl.text!
                s2 = Double(sayi2)!
                s2 = tan(s2)
                lbl.text = String(s2)
                virgulBtnOutlet.isHidden = true
            
            }else{
                return()
            }
        }
        else{
            lbl.text = ""
        }
    }
    //
    @IBAction func btnCot(_ sender: Any) {
        if(lbl.text == error){
            lbl.text = ""
        }else if(lbl.text != "" && lbl.text != nil){
            
        
            if(sayi1 == ""){
                sayi1 = lbl.text!
                s1 = Double(sayi1)!
                s1 = cos(s1)/sin(s1)
                lbl.text = String(s1)
                virgulBtnOutlet.isHidden = true
            }
        
            else if(sayi2 == ""){
                sayi2 = lbl.text!
                s2 = Double(sayi2)!
                s2 = cos(s2)/sin(s2)
                lbl.text = String(s2)
                virgulBtnOutlet.isHidden = true
            
            }else{
                return()
            }
        }
        else{
            lbl.text = ""
        }
    }

    @IBAction func btnLog10(_ sender: Any) {
        if(lbl.text == error){
            lbl.text = ""
        }else if(lbl.text != "" && lbl.text != nil){
            
        
            if(sayi1 == ""){
                sayi1 = lbl.text!
                s1 = Double(sayi1)!
                s1 = log10(s1)
                lbl.text = String(s1)
                virgulBtnOutlet.isHidden = true
            }
        
            else if(sayi2 == ""){
                sayi2 = lbl.text!
                s2 = Double(sayi2)!
                s2 = log10(s2)
                lbl.text = String(s2)
                virgulBtnOutlet.isHidden = true
            
            }else{
                return()
            }
        }
        else{
            lbl.text = ""
        }
    }
    //
    @IBAction func btnLog2(_ sender: Any) {
        if(lbl.text == error){
            lbl.text = ""
        }else if(lbl.text != "" && lbl.text != nil){
            
        
            if(sayi1 == ""){
                sayi1 = lbl.text!
                s1 = Double(sayi1)!
                s1 = log2(s1)
                lbl.text = String(s1)
                virgulBtnOutlet.isHidden = true
            }
        
            else if(sayi2 == ""){
                sayi2 = lbl.text!
                s2 = Double(sayi2)!
                s2 = log2(s2)
                lbl.text = String(s2)
                virgulBtnOutlet.isHidden = true
            
            }else{
                return()
            }
        }
        else{
            lbl.text = ""
        }
    }
    //
    @IBAction func btnKok(_ sender: Any) {
        if(lbl.text == error){
            lbl.text = ""
        }else if(lbl.text != "" && lbl.text != nil){
            
        
            if(sayi1 == ""){
                sayi1 = lbl.text!
                s1 = Double(sayi1)!
                s1 = sqrt(s1)
                lbl.text = String(s1)
                virgulBtnOutlet.isHidden = true
            }
        
            else if(sayi2 == ""){
                sayi2 = lbl.text!
                s2 = Double(sayi2)!
                s2 = sqrt(s2)
                lbl.text = String(s2)
                virgulBtnOutlet.isHidden = true
            
            }else{
                return()
            }
        }
        else{
            lbl.text = ""
        }
    }
    
    @IBAction func btnMutlak(_ sender: Any) {
        if(lbl.text == error){
            lbl.text = ""
        }else if(lbl.text != "" && lbl.text != nil){
            
        
            if(sayi1 == ""){
                sayi1 = lbl.text!
                s1 = Double(sayi1)!
                s1 = abs(s1)
                lbl.text = String(s1)
                virgulBtnOutlet.isHidden = true
            }
        
            else if(sayi2 == ""){
                sayi2 = lbl.text!
                s2 = Double(sayi2)!
                s2 = abs(s2)
                lbl.text = String(s2)
                virgulBtnOutlet.isHidden = true
            
            }else{
                return()
            }
        }
        else{
            lbl.text = ""
        }
    }
    //sqrt(s1)
    
    @IBAction func btnUsE(_ sender: Any) {
        if(lbl.text == error){
            lbl.text = ""
        }else if(lbl.text != "" && lbl.text != nil){
            
        
            if(sayi1 == ""){
                sayi1 = lbl.text!
                s1 = Double(sayi1)!
                s1 = exp(s1)
                lbl.text = String(s1)
                virgulBtnOutlet.isHidden = true
            }
        
            else if(sayi2 == ""){
                sayi2 = lbl.text!
                s2 = Double(sayi2)!
                s2 = exp(s2)
                lbl.text = String(s2)
                virgulBtnOutlet.isHidden = true
            
            }else{
                return()
            }
        }
        else{
            lbl.text = ""
        }
        
    }
    //tanımlanan operatorler
    
    @IBAction func btnCarp(sender: AnyObject) {
        sayi1 = lbl.text!
        işlem = "*"
        lbl.text = ""
        virgulBtnOutlet.isHidden = false
    }
    @IBAction func btnBol(sender: AnyObject) {
        sayi1 = lbl.text!
        işlem = "/"
        lbl.text = ""
        virgulBtnOutlet.isHidden = false
    }
    @IBAction func btnTopla(sender: AnyObject) {
        sayi1 = lbl.text!
        işlem = "+"
        lbl.text = ""
        virgulBtnOutlet.isHidden = false
    }
    @IBAction func btnCıkar(sender: AnyObject) {
        sayi1 = lbl.text!
        işlem = "-"
        lbl.text = ""
        virgulBtnOutlet.isHidden = false
    }
    
    @IBAction func btnYuzde(_ sender: Any) {
        sayi1 = lbl.text!
        işlem = "%"
        lbl.text = ""
        virgulBtnOutlet.isHidden = false
    }
    
    @IBAction func btnUs(_ sender: Any) {
        sayi1 = lbl.text!
        işlem = "^"
        lbl.text = ""
        virgulBtnOutlet.isHidden = false
    }
    
    @IBAction func btnUslukok(_ sender: Any) {
        sayi1 = lbl.text!
        işlem = "&"
        lbl.text = ""
        virgulBtnOutlet.isHidden = false
    }
    
    @IBAction func btnHypot(_ sender: Any) {
        sayi1 = lbl.text!
        işlem = "h"
        lbl.text = ""
        virgulBtnOutlet.isHidden = false
    }
    
    @IBAction func btneşittir(sender: AnyObject) {

        sayi2 = lbl.text!
        
        if(lbl.text == error && lbl.text == ""){
            lbl.text = ""
        }else if(sayi1 == "" || sayi2 == ""){
            lbl.text = ""
        }else{
            s1 = Double(sayi1)!
            s2 = Double(sayi2)!
        }
        switch işlem {
                
            case "*":
            sonuç = s1 * s2
            case "/":
            sonuç = s1 / s2
            case "+":
            sonuç = s1 + s2
            case "-":
            sonuç = s1 - s2
            case "^":
            sonuç = pow(s1, s2)
            case "&":
            sonuç = pow(s1, (1/s2))
            case "h":
            sonuç = hypot(s1, s2)
        default:
            sonuç = (s1*s2)/100
            
                
        }
        
            
            
        if(sayi2 == "0" && işlem == "/"){
            lbl.text = error
        }else{
            sonuçint = Int(sonuç)
                    
            sonuçinttodouble = Double(sonuçint)
                    
            if (sonuç == sonuçinttodouble){
                lbl.text = String(sonuçint)
                sayi1 = String(sonuçint)
                    
            }else {
                lbl.text = String(sonuç)
                sayi1 = String(sonuç)
            }
        }
    
    }

}

    
    
    

