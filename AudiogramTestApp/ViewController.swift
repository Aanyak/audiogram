//
//  ViewController.swift
//  AudiogramTestApp
//
//  Created by Aanya Khaira on 8/10/17.
//  Copyright © 2017 testCompany. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var ap1 = AVAudioPlayer()
    var ap2 = AVAudioPlayer()
    var ap3 = AVAudioPlayer()
    var ap4 = AVAudioPlayer()
    var ap5 = AVAudioPlayer()
    var ap6 = AVAudioPlayer()
    var ap7 = AVAudioPlayer()
    var ap8 = AVAudioPlayer()
    var ap9 = AVAudioPlayer()
    var ap10 = AVAudioPlayer()
    var ap11 = AVAudioPlayer()
    var ap12 = AVAudioPlayer()
    var ap13 = AVAudioPlayer()
    
    var ELC1000 = -40.0
    var volBias = -40.0
    
    //array of sliders
    var sliders: [UISlider] = [UISlider]()
    
    //array of btns
    //var btns: [UIButton] = [UIButton]()
    
    //array of slider values when user clicks "done" button
    var sliderVals: [Double] = [Double]()
    
    //array of dB vals calculated from slider vals (-40 to +40 scale)
    var dBVals: [Double] = [Double]()
    
    //array of gains (in decible value) calculated from dB vals
    var gainsdB: [Double] = [Double]()
    
    //array of linear gains calculated from dB gains
    var gainsLin: [Double] = [Double]()
    
    //array of filter parameters calculated using dB gains + other vals
    var params: [[Double]] = []
    
    // array of q values corresponding w different frequencies for testing
    var q: [Int] = []
    
    //array of ELC values in dB of frquencies used for testing
    var ELC: [Double] = [-10.0423,-18.0376,-24.9024,-30.7530,-35.5281,-38.8663,-37.3121,-43.0160,-44.0362,-37.3428,-26.8818,-29.5780]
    
    //array of frequencies used for test tones
    var freqs: [Int] = [74, 115, 178, 274, 422, 650, 1538, 2366, 3640, 5600, 8615, 13253]
    
    
    
    //var btns: [UIButton] = [UIButton]()
    //array of file names of wav files
    //var fileNames: [String] = ["74Hz", "115Hz", "178Hz", "274Hz","422Hz","650Hz", "1538Hz", "2366Hz", "3640Hz", "5600Hz", "8615Hz", "13253Hz"]
    //var frequencies: [String] = ["s70","s100","s200","s300","s400","s600","s1500","s2400","s3600","s5600","s8600","s13300"]
    //var ratios: [Double] = [31.4330,12.5205,5.6804,2.8964,1.6714,1.1381,1.3611,0.7058,0.6276,1.3563,4.5228, 3.3159]

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        sliders = [s70,s100,s200,s300,s400,s600,s1500,s2400,s3600,s5600,s8600,s13300]
        //btns = [btn70,btn100,btn200,btn300,btn400,btn600,btn1500,btn2400,btn3600,btn5600,btn8600,btn13300]
        
        //for loop that creates 13 audioplayers
        /*for i in 1...13{
            let ap = "ap" + String(i)
            createAP(audioplayer: ap, fileName: fileNames[i-1])
        }*/
        do{
            let audioPath = Bundle.main.path(forResource: "74Hz", ofType: "wav")
            try ap1 = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPath!) as URL)
        }
        catch{
            //ERROR
        }
        do{
            let audioPath = Bundle.main.path(forResource: "115Hz", ofType: "wav")
            try ap2 = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPath!) as URL)
        }
        catch{
            //ERROR
        }
        do{
            let audioPath = Bundle.main.path(forResource: "178Hz", ofType: "wav")
            try ap3 = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPath!) as URL)
        }
        catch{
            //ERROR
        }
        do{
            let audioPath = Bundle.main.path(forResource: "274Hz", ofType: "wav")
            try ap4 = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPath!) as URL)
        }
        catch{
            //ERROR
        }
        do{
            let audioPath = Bundle.main.path(forResource: "422Hz", ofType: "wav")
            try ap5 = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPath!) as URL)
        }
        catch{
            //ERROR
        }
        do{
            let audioPath = Bundle.main.path(forResource: "650Hz", ofType: "wav")
            try ap6 = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPath!) as URL)
        }
        catch{
            //ERROR
        }
        do{
            let audioPath = Bundle.main.path(forResource: "1538Hz", ofType: "wav")
            try ap7 = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPath!) as URL)
        }
        catch{
            //ERROR
        }
        do{
            let audioPath = Bundle.main.path(forResource: "2366Hz", ofType: "wav")
            try ap8 = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPath!) as URL)
        }
        catch{
            //ERROR
        }
        do{
            let audioPath = Bundle.main.path(forResource: "3640Hz", ofType: "wav")
            try ap9 = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPath!) as URL)
        }
        catch{
            //ERROR
        }
        do{
            let audioPath = Bundle.main.path(forResource: "5600Hz", ofType: "wav")
            try ap10 = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPath!) as URL)
        }
        catch{
            //ERROR
        }
        do{
            let audioPath = Bundle.main.path(forResource: "8615Hz", ofType: "wav")
            try ap11 = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPath!) as URL)
        }
        catch{
            //ERROR
        }
        do{
            let audioPath = Bundle.main.path(forResource: "13253Hz", ofType: "wav")
            try ap12 = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPath!) as URL)
        }
        catch{
            //ERROR
        }
        do{
            let audioPath = Bundle.main.path(forResource: "1kHz", ofType: "wav")
            try ap13 = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPath!) as URL)
        }
        catch{
            //ERROR
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
    @IBOutlet var s70: UISlider!
    @IBOutlet var s100: UISlider!
    @IBOutlet var s200: UISlider!
    @IBOutlet var s300: UISlider!
    @IBOutlet var s400: UISlider!
    @IBOutlet var s600: UISlider!
    @IBOutlet var s1500: UISlider!
    @IBOutlet var s2400: UISlider!
    @IBOutlet var s3600: UISlider!
    @IBOutlet var s5600: UISlider!
    @IBOutlet var s8600: UISlider!
    @IBOutlet var s13300: UISlider!
    //var sliders: [UISlider] = [s70,s100,s200,s300,s400,s600,s1500,s2400,s3600,s5600,s8600,s13300]
    
    

    @IBAction func doneBtn(_ sender: Any) {
        
        //clear all previous values in arrays
        params.removeAll()
        sliderVals.removeAll()
        dBVals.removeAll()
        gainsdB.removeAll()
        //gainsLin.removeAll()
        
        //obtain slider values
        for slider in sliders{
            sliderVals.append(Double(slider.value))
        }
        print(sliderVals)
        
        //convert slider values to dB (-20 to 20)
        calcdB()
        
        //calculate gain from dB values and ElC
        gain()
        
        //calculate parameters for filters
        for i in 0...11{
            params.append(biquad(frequency: freqs[i], gain: gainsdB[i], q: 1))
        }
        
        var biquads = ""
        for i in 0...11{
            biquads = biquads + String(describing: params[i]) + "\n"
        }
        print("Biquad filters:")
        print(biquads)
        print("done")
        
        txtFile(fileName: "file", value: biquads)
        
        //convert gain to linear
        //convertLinear()
    }
    
    @IBAction func btn70(_ sender: Any) {
        ap1.volume = calcVol(slider: Double(s70.value), ELCval: ELC[0])
        btn(ap: ap1)
    }
    
    @IBAction func btn100(_ sender: Any) {
        ap2.volume = calcVol(slider: Double(s100.value), ELCval: ELC[1])
        btn(ap: ap2)
    }
    
    @IBAction func btn200(_ sender: Any) {
        ap3.volume = calcVol(slider: Double(s200.value), ELCval: ELC[2])
        btn(ap: ap3)
    }
    
    @IBAction func btn300(_ sender: Any) {
        ap4.volume = calcVol(slider: Double(s300.value), ELCval: ELC[3])
        btn(ap: ap4)
    }
    
    @IBAction func btn400(_ sender: Any) {
        ap5.volume = calcVol(slider: Double(s400.value), ELCval: ELC[4])
        btn(ap: ap5)
    }
    
    @IBAction func btn600(_ sender: Any) {
        ap6.volume = calcVol(slider: Double(s600.value), ELCval: ELC[5])
        btn(ap: ap6)
    }
    
    @IBAction func btn1500(_ sender: Any) {
        ap7.volume = calcVol(slider: Double(s1500.value), ELCval: ELC[6])
        btn(ap: ap7)
    }
    
    @IBAction func btn2400(_ sender: Any) {
        ap8.volume = calcVol(slider: Double(s2400.value), ELCval: ELC[7])
        btn(ap: ap8)
    }
    
    @IBAction func btn3600(_ sender: Any) {
        ap9.volume = calcVol(slider: Double(s3600.value), ELCval: ELC[8])
        btn(ap: ap9)
    }
   
    @IBAction func btn5600(_ sender: Any) {
        ap10.volume = calcVol(slider: Double(s5600.value), ELCval: ELC[9])
        btn(ap: ap10)
    }
    
    @IBAction func btn8600(_ sender: Any) {
        ap11.volume = calcVol(slider: Double(s8600.value), ELCval: ELC[10])
        btn(ap: ap11)
    }
    
    @IBAction func btn13300(_ sender: Any) {
        ap12.volume = calcVol(slider: Double(s13300.value), ELCval: ELC[11])
        btn(ap: ap12)
    }
    
    @IBAction func tone(_ sender: Any) {
        
        ap13.volume = calcVol(slider: 0.5, ELCval: ELC1000)
        btn(ap: ap13)
    }
    
    @IBAction func s70(_ sender: Any) {
        slider(ap:ap1,slider: s70)
    }
    @IBAction func s100(_ sender: Any) {
        slider(ap: ap2,slider: s100)
    }
    @IBAction func s200(_ sender: Any) {
        slider(ap: ap3,slider: s200)
    }
    @IBAction func s300(_ sender: Any) {
        slider(ap: ap4,slider: s300)
    }
    @IBAction func s400(_ sender: Any) {
        slider(ap: ap5,slider: s400)
    }
    @IBAction func s600(_ sender: Any) {
        slider(ap:ap6,slider:s600)
    }
    @IBAction func s1500(_ sender: Any) {
        slider(ap: ap7,slider: s1500)
    }
    @IBAction func s2400(_ sender: Any) {
        slider(ap: ap8,slider: s2400)
    }
    @IBAction func s3600(_ sender: Any) {
        slider(ap: ap9,slider: s3600)
    }
    @IBAction func s5600(_ sender: Any) {
        slider(ap: ap10,slider: s5600)
    }
    @IBAction func s8600(_ sender: Any) {
        slider(ap: ap11,slider: s8600)
    }
    @IBAction func s13300(_ sender: Any) {
        slider(ap: ap12,slider: s13300)
    }
    
    

    
    //function that creates audioplayer given name of audioplayer and filename to play
    /*func createAP(audioplayer:String, fileName:String){
        do{
            let audioPath = Bundle.main.path(forResource: fileName, ofType: "wav")
            try audioplayer = AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPath!) as URL)
        }
        catch{
            //ERROR
        }
    }*/
    
    //audio functions w/ button presses
    func btn(ap:AVAudioPlayer){
        if(ap.isPlaying){
            ap.pause()
        }
        else{
            ap.play()
        }
    }
    
    func slider(ap:AVAudioPlayer, slider:UISlider /*, bias:Double*/){
        //ap.volume = slider.value
        let volume = calcVol(slider: Double(slider.value), ELCval:ELC[sliders.index(of: slider)!] )
        ap.volume = volume
        let val =  Double(slider.value)
        print (val);
        print(volume);
    }
    
    func calcdB(){
        for val in sliderVals{
            dBVals.append(Double(-40.0+(80.0*val)))
        }
        print(dBVals)
    }
    
    func gain(){
        var i = 0;
        for val in dBVals{
            gainsdB.append(val + (ELC[i])+ELC1000)
            i = i+1
        }
        print(gainsdB)
    }
    
    func convertLinear(){
        for dB in gainsdB{
            gainsLin.append(pow(10,dB/20))
        }
        print(gainsLin)
    }
    
    func calcVol(slider: Double, ELCval:Double) -> Float{
        var vol = (40*slider)
        vol = vol - 20 - ELC1000 + ELCval + volBias
        vol = vol/20
        vol = pow(10.0,vol)
        if vol>1.5{
            vol = 1.5;
        }
        return Float(vol)
    }
    
    func txtFile(fileName:String,value:String) {
        
        let documentsPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0] as NSString!
        let path = documentsPath?.appendingPathComponent(fileName)
        
        do {
            try value.write(toFile: path!, atomically: true, encoding: String.Encoding.utf8)
        } catch let error as NSError {
            print("ERROR : writing to file \(String(describing: path)) : \(error.localizedDescription)")
        }
        
    }
    
    func biquad(frequency:Int, gain:Double, q:Int)->[Double]{
        let sr = 48000.0
        
        
        let omega = (2.0*Double.pi*Double(frequency))/sr
        let sinw = sin(omega)
        let cosw = cos(omega)
        
        let alpha = sinw/(2.0*Double(q))
        let A = pow(10.0,(gain/40.0))
        
        //calculate parameters
        let b0 = 1.0 + (alpha * A)
        let b1 = -2.0 * cosw;
        let b2 = 1.0 - (alpha * A)
        let a0 = 1.0 + (alpha / A)
        let a1 = -2.0 * cosw;
        let a2 = 1.0 - (alpha / A)
        
        //normalize for canonical form and return values
        let bb: [Double] = [b0/a0, b1/a0, b2/a0]
        let aa: [Double] = [1.0, a1/a0, a2/a0]
        let cc: [Double] = bb + aa
        return cc
        
    }
    
    //calculates gain
    /*func gain(sliderVal:Double, slider:String)->Double{
        let i = frequencies.index(of: slider)
        let gain = sliderVal*pow(10,(ratios[i!]/20))
        return gain
    }*/
    
    /*func ELCRatio(f1:Double,f2:Double)->Double{
        let ratio = 1.0
        return ratio
    }*/
    
    

}

