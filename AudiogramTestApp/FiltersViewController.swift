//
//  FiltersViewController.swift
//  AudiogramTestApp
//
//  Created by Aanya Khaira on 8/11/17.
//  Copyright © 2017 testCompany. All rights reserved.
//

import UIKit
import LAM2Framework

class FiltersViewController:UIViewController, LAM2Protocol{
    //array of filter parameters calculated using dB gains + other vals
    var params: [[Double]] = []
    
    //array of filter parameters without a val (5 vals not 6)
    var filters: [[Double]] = []
    
    let audioManager = AccessoryManager()
    var accessoryReady = false
    @IBOutlet weak var statusBar: UILabel!
    let leftCommands = ["BIQUAD_L0", "BIQUAD_L1", "BIQUAD_L2", "BIQUAD_L3", "BIQUAD_L4", "BIQUAD_L5", "BIQUAD_L6", "BIQUAD_L7",
                        "BIQUAD_L8", "BIQUAD_L9", "BIQUAD_L10", "BIQUAD_L11", "BIQUAD_L12", "BIQUAD_L13", "BIQUAD_L14", "BIQUAD_L15"]
    let rightCommands = ["BIQUAD_R0", "BIQUAD_R1", "BIQUAD_R2", "BIQUAD_R3", "BIQUAD_R4", "BIQUAD_R5", "BIQUAD_R6", "BIQUAD_R7",
                         "BIQUAD_R8", "BIQUAD_R9", "BIQUAD_R10", "BIQUAD_R11", "BIQUAD_R12", "BIQUAD_R13", "BIQUAD_R14", "BIQUAD_R15"]
    
    var leftValues  = [[Double]]()
    var rightValues = [[Double]]()
    
    @IBAction func resetBtn(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func applyFilters(_ sender: UIButton) {
        statusBar.text = "Applying Filters"
        if accessoryReady {
                _ = audioManager.sendCommand(.Set, leftCommands[4], leftValues[0][0], leftValues[0][1], leftValues[0][2], leftValues[0][3], leftValues[0][4]);
        }
        else {
            statusBar.text = "Accessory Not Ready"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statusBar.text = "... Waiting ..."
        
        initValues()
        computeValues()
        audioManager.delegate = self
        audioManager.setEnv(.Msg, true)
        audioManager.setEnv(.customFW, true)
        audioManager.set(moduleId: 0x40)
        defineCommands()
        audioManager.initManager()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Define our commands
    func defineCommands()
    {
        for i in 0..<16 {
            let b = audioManager.define(command: leftCommands[i], group:0x0, id:UInt8(0xB0 + i), type: .Buffered,
                                        setFormat: ([.Double, .Double, .Double, .Double, .Double], ["b0", "b1", "b2", "a1", "a2"], [.Double, .Double, .Double, .Double, .Double]))
            //print("Defined BIQUAD_L\(i): \(b)")
            let a = audioManager.define(command: rightCommands[i], group:0x0, id:UInt8(0xC0 + i), type: .Buffered,
                                        setFormat: ([.Double, .Double, .Double, .Double, .Double], ["b0", "b1", "b2", "a1", "a2"], [.Double, .Double, .Double, .Double, .Double]))
            print("Defined BIQUAD_L\(i): \(b), BIQUAD_R\(i): \(a)")
        }
        
        let b = audioManager.define(command: "ApplyFilters", group:0x0, id:UInt8(0xAF), type: .Buffered,
                                    setFormat: ([.UInt32], ["filter"], [.UInt32]))
        print("Defined APPLY FILTERS: \(b)")
    }
    
    func initValues()
    {
        for i in 0..<params.count{
            params[i].remove(at:3)
            
        }
        leftValues = params
        rightValues = params
 
    }
    
    func computeValues()
    {
        // This is where values will be computed and inserted into the respective arrays
        
    }
    
    func adminEvent(_ event: AdminEvent)
    {
        print("Admin Event Received: \(event)")
        //statusBar.text = "Admin Event: \(event)"
        
        switch event {
        case .AccessoryConnected:break
        case .AccessoryReady: accessoryReady = true
        case .AccessoryNotReady:break
        case .AccessoryDisconnected: break
        default: break
        }
    }
    
    func receivedStatus(_ name: StatusEvent, value:Any)
    {
        print("Received Status: \(name)")
        if name == .Message {
            statusBar.text = "Status: \(value as! String)"
        }
    }
    
    /*func receivedResponse(_ opcode: String, values result: [(String, AnyObject)], status: Status)
    {
        if status != .Success {
            statusBar.text = "Command: \(opcode) Failed"
            return
        } else {
            statusBar.text = "Command: \(opcode) Success"
            print("Command: \(opcode) Success")
        }
        
        if opcode == "BIQUAD_L4" {
            _ = audioManager.sendCommand(.Set, rightCommands[4], rightValues[4][0], rightValues[4][1], rightValues[4][2], rightValues[4][3], rightValues[4][4])
        } else if opcode == "BIQUAD_R4"  {
            _ = audioManager.sendCommand(.Set, "ApplyFilters", 0xFFFFFFFF)
        } else if opcode == "ApplyFilters" {
            statusBar.text = "Applied Filters"
        }
    }*/
    
    // Use this function instead of above in case you need to send all the left0..15 and right0..15 coefficients
    
    func receivedResponse(_ opcode: String, values result: [(String, AnyObject)], status: Status)
        {
            if status != .Success {
                statusBar.text = "Command: \(opcode) Failed"
                return
            } else {
                statusBar.text = "Command: \(opcode) Success"
                print("Command: \(opcode) Success")
            }
    
            if let id = leftCommands.index(of: opcode) {
                if id < 15 {
                    let i = id + 1
                    _ = audioManager.sendCommand(.Set, leftCommands[i], leftValues[i-4][0], leftValues[i-4][1], leftValues[i-4][2], leftValues[i-4][3], leftValues[i-4][4])
                } else if id == 15 {
                    _ = audioManager.sendCommand(.Set, rightCommands[4], rightValues[0][0], rightValues[0][1], rightValues[0][2], rightValues[0][3], rightValues[0][4])
                }
            } else if let id = rightCommands.index(of: opcode) {
                if id < 15 {
                    let i = id + 1
                    _ = audioManager.sendCommand(.Set, rightCommands[i], rightValues[i-4][0], rightValues[i-4][1], rightValues[i-4][2], rightValues[i-4][3], rightValues[i-4][4])
                } else if id == 15 {
                    _ = audioManager.sendCommand(.Set, "ApplyFilters", 0xFFF0FFF0)
                }
            } else if opcode == "ApplyFilters" {
                statusBar.text = "Applied Filters"
            }
        }
    /*@IBAction func backBtn(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }*/
}
