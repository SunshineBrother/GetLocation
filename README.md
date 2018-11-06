# GetLocation
swift4 获取经纬度，地址小工具

        获取坐标
        LocationUtil.share.getCurrentPointLocation(isOnce: false) { (loc, errorMsg) in
            if errorMsg == nil {
                self.localLabel.text = String(format: "%f,%f", (loc?.coordinate.latitude)!,(loc?.coordinate.longitude)!)
            }
        }


        获取位置信息
        LocationUtil.share.getCurrentLocation(isOnce: false) { (loc, errorMsg) -> () in
            if errorMsg == nil {
                self.areaLabel.text = String(format: "%@", (loc?.name)!)
            }
