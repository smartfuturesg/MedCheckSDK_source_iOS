# MedCheckPod

[![CI Status](http://img.shields.io/travis/smartfuturesg/MedCheckPod.svg?style=flat)](https://travis-ci.org/smartfuturesg/MedCheckPod)
[![Version](https://img.shields.io/cocoapods/v/MedCheckPod.svg?style=flat)](http://cocoapods.org/pods/MedCheckPod)
[![License](https://img.shields.io/cocoapods/l/MedCheckPod.svg?style=flat)](http://cocoapods.org/pods/MedCheckPod)
[![Platform](https://img.shields.io/cocoapods/p/MedCheckPod.svg?style=flat)](http://cocoapods.org/pods/MedCheckPod)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

MedCheckPod is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'MedCheckPod'
```
## Usage

### Pod Import
<pre>
    import BPTrackerPod
</pre>

### Get Shared Instance of BPMDataManager

<pre>
    let bluetoothManager = BPMDataManager.sharedInstance
</pre>

### Set delegate from ViewDidLoad()
<pre>
override func viewDidLoad() {
    super.viewDidLoad()
    .
    .
    bluetoothManager.delegate = self
    bluetoothManager.didUpdateManager()
}
</pre>

### Get BPMDataManager delegate method for scanned MedCheck devices

<pre>
extension ViewController: BPMDataManagerDelegate{
    func medcheckBLEDetected(_ peripheral: CBPeripheral, advertisementData: [String : Any], RSSI: NSNumber) {
        print(bluetoothManager.arrBLEList)
    }
}
</pre>

### Connect to MedCheck BLE device

<pre>
    BPMDataManager.sharedInstance.connectPeripheral(peripheral: connectedPeripheral!)
</pre>

### Disconnect to MedCheck BLE device

<pre>
    BPMDataManager.sharedInstance.didDisconnectPeripheral(connectedPeripheral!)
</pre>

### Clear Blood Pressure data from MedCheck BLE device

<pre>
    BPMDataManager.sharedInstance.clearBPMDataCommand()
</pre>

### Synch current time with Blood Pressure data from MedCheck BLE device

<pre>
    BPMDataManager.sharedInstance.timeSyncOfBPM()
</pre>

### Synch current time with Blood Pressure data from MedCheck BLE device

<pre>
    BPMDataManager.sharedInstance.timeSyncOfBPM()
</pre>

### BPMDataManagerDelegate methods combined with CoreBluetoothManagerDelegate methods.

<pre>
extension ViewController: BPMDataManagerDelegate{
    func medcheckBLEDetected(_ peripheral: CBPeripheral, advertisementData: [String : Any], RSSI: NSNumber) {
        if bpmDataManager.bluetoothManager.connected {
            bpmDataManager.connectPeripheral(peripheral: bpmDataManager.connectedPeripheral!)
        }
    }

    func didMedCheckConnected(_ connectedPeripheral: CBPeripheral) {
        print("didMedCheckConnected \(connectedPeripheral)")
    }

    func connectedUserData(_ connectedUser: [String : Any]) {
        print("connectedUserData \(connectedUser)")
    }
    func willTakeNewReading(_ BLEName: CBPeripheral) {
        print("willStartDataReading \(BLEName)")
    }

    func didSyncTime() {
        print("didSyncTime")
    }

    func didTakeNewReading(_ readingData: [String : Any]) {
        print("didTakeNewReading \(jsonStringConvert(readingData))")
    }

    func showAlertMessage(_ title : String, message : String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.cancel, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    func fetchAllDataFromMedCheck(_ readingData: [Any]) {
        print("fetchAllDataFromMedCheck \(jsonStringConvert(readingData))")
    }

    func didClearedData() {
        print("didClearedData")
    }

    func willStartDataReading() {
        print("willStartDataReading")
    }

    func didEndDataReading() {
        print("didEndDataReading")
    }

    func jsonStringConvert(_ obj : Any) -> String {
        do {
            let jsonData = try JSONSerialization.data(withJSONObject: obj, options: JSONSerialization.WritingOptions.prettyPrinted)
            return  String(data: jsonData, encoding: String.Encoding.utf8)! as String

        } catch {
        return ""
        }
    }
}
</pre>
## Author

smartfuturesg, sumit@oursmartfuture.com

## License

MedCheckPod is available under the MIT license. See the LICENSE file for more info.
