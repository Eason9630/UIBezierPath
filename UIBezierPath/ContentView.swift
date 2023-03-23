//
//  ContentView.swift
//  UIBezierPath
//
//  Created by 林祔利 on 2023/3/18.
//

import SwiftUI

struct DrawView: UIViewRepresentable {
    func makeUIView(context: Context) -> UIView {
        let view = UIView()
        
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 400, height: 400))
        imageView.image = UIImage(named: "皮卡丘")
        imageView.alpha = 0.4
        view.addSubview(imageView)
        
        //尾巴
        let tail = UIBezierPath()
        tail.move(to: CGPoint(x: 159, y: 125))
        tail.addLine(to: CGPoint(x: 166, y: 90))
        tail.addQuadCurve(to: CGPoint(x: 60, y: 114), controlPoint: CGPoint(x: 80, y: 100))
        tail.addQuadCurve(to: CGPoint(x: 70, y: 186), controlPoint: CGPoint(x: 63, y: 180))
        tail.addQuadCurve(to: CGPoint(x: 159, y: 125), controlPoint: CGPoint(x: 140, y: 150))
        
        let layer2 = CAShapeLayer()
        layer2.path = tail.cgPath
        layer2.lineWidth = 3
        layer2.strokeColor = UIColor.black.cgColor
        layer2.fillColor = UIColor(red: 1, green: 230/255, blue: 0, alpha: 1).cgColor
        view.layer.addSublayer(layer2)
        
        let path = UIBezierPath()
        //臉跟肚子
        path.move(to: CGPoint(x: 153, y: 125))
        path.addQuadCurve(to: CGPoint(x: 260, y: 145), controlPoint: CGPoint(x: 200, y: 110))
        path.addQuadCurve(to: CGPoint(x: 375, y: 89), controlPoint: CGPoint(x: 350, y: 80))
        path.addQuadCurve(to: CGPoint(x: 274, y: 176), controlPoint: CGPoint(x: 350, y: 140))
        path.addQuadCurve(to: CGPoint(x: 274, y: 230), controlPoint: CGPoint(x: 280, y: 190))
        path.addQuadCurve(to: CGPoint(x: 332, y: 231), controlPoint: CGPoint(x: 330, y: 215))
        path.addLine(to: CGPoint(x: 334, y: 230))
        path.addLine(to: CGPoint(x: 332, y: 234))
        path.addLine(to: CGPoint(x: 335, y: 236))
        path.addLine(to: CGPoint(x: 332, y: 238))
        path.addLine(to: CGPoint(x: 336, y: 240))
        path.addLine(to: CGPoint(x: 334, y: 243))
        path.addQuadCurve(to: CGPoint(x: 270, y: 282), controlPoint: CGPoint(x: 278, y: 290))
        path.addCurve(to: CGPoint(x: 87, y: 260), controlPoint1: CGPoint(x: 272, y: 377), controlPoint2: CGPoint(x: 48, y: 360))
        path.addQuadCurve(to: CGPoint(x: 41, y: 205), controlPoint: CGPoint(x: 30, y: 210))
        path.addLine(to: CGPoint(x: 38, y: 202))
        path.addLine(to: CGPoint(x: 42, y: 198))
        path.addLine(to: CGPoint(x: 39, y: 197))
        path.addLine(to: CGPoint(x: 43, y: 195))
        path.addLine(to: CGPoint(x: 40, y: 193))
        path.addLine(to: CGPoint(x: 44, y: 191))
        path.addLine(to: CGPoint(x: 46, y: 187))
        path.addLine(to: CGPoint(x: 48, y: 185))
        path.addLine(to: CGPoint(x: 54, y: 182))
        path.addQuadCurve(to: CGPoint(x: 102, y: 202), controlPoint: CGPoint(x: 60, y: 180))
        path.addQuadCurve(to: CGPoint(x: 127, y: 143), controlPoint: CGPoint(x: 110, y: 168))
        path.addQuadCurve(to: CGPoint(x: 81, y: 45), controlPoint: CGPoint(x: 62, y: 59))
        path.addQuadCurve(to: CGPoint(x: 153, y: 125), controlPoint: CGPoint(x: 106, y: 40))
        let layer = CAShapeLayer()
        layer.path = path.cgPath
        layer.lineWidth = 3
        layer.strokeColor = UIColor.black.cgColor
        layer.fillColor = UIColor(red: 1, green: 230/255, blue: 0, alpha: 1).cgColor
        view.layer.addSublayer(layer)

        
        //腳1
        let foot1 = UIBezierPath()
        foot1.move(to: CGPoint(x: 89, y: 308))
        foot1.addQuadCurve(to: CGPoint(x: 105, y: 325), controlPoint: CGPoint(x: 66, y: 357))
        let layer3 = CAShapeLayer()
        layer3.path = foot1.cgPath
        layer3.lineWidth = 3
        layer3.strokeColor = UIColor.black.cgColor
        layer3.fillColor = UIColor(red: 1, green: 230/255, blue: 0, alpha: 1).cgColor
        view.layer.addSublayer(layer3)
        
        //腳1線
        let footLine = UIBezierPath()
        footLine.move(to: CGPoint(x: 82, y: 337))
        footLine.addLine(to: CGPoint(x: 90, y: 320))
        let layer4 = CAShapeLayer()
        layer4.path = footLine.cgPath
        layer4.lineWidth = 3
        layer4.strokeColor = UIColor.black.cgColor
        layer4.fillColor = UIColor.black.cgColor
        view.layer.addSublayer(layer4)
        
        //腳1線
        let footLine1 = UIBezierPath()
        footLine1.move(to: CGPoint(x: 88, y: 335))
        footLine1.addLine(to: CGPoint(x: 95, y: 320))
        let layer5 = CAShapeLayer()
        layer5.path = footLine1.cgPath
        layer5.lineWidth = 3
        layer5.strokeColor = UIColor.black.cgColor
        layer5.fillColor = UIColor.black.cgColor
        view.layer.addSublayer(layer5)
        
        //腳1
        let foot2 = UIBezierPath()
        foot2.move(to: CGPoint(x:247, y: 327))
        foot2.addQuadCurve(to: CGPoint(x: 220, y: 338), controlPoint: CGPoint(x: 261, y: 380))
        let layer6 = CAShapeLayer()
        layer6.path = foot2.cgPath
        layer6.lineWidth = 3
        layer6.strokeColor = UIColor.black.cgColor
        layer6.fillColor = UIColor(red: 1, green: 230/255, blue: 0, alpha: 1).cgColor
        view.layer.addSublayer(layer6)
        
        //腳1線
        let foot2Line = UIBezierPath()
        foot2Line.move(to: CGPoint(x: 243, y: 356))
        foot2Line.addLine(to: CGPoint(x: 241, y: 343))
        let layer7 = CAShapeLayer()
        layer7.path = foot2Line.cgPath
        layer7.lineWidth = 3
        layer7.strokeColor = UIColor.black.cgColor
        layer7.fillColor = UIColor.black.cgColor
        view.layer.addSublayer(layer7)
        
        //腳1線
        let foot2Line1 = UIBezierPath()
        foot2Line1.move(to: CGPoint(x: 248, y: 354))
        foot2Line1.addLine(to: CGPoint(x: 246, y: 343))
        let layer8 = CAShapeLayer()
        layer8.path = foot2Line1.cgPath
        layer8.lineWidth = 3
        layer8.strokeColor = UIColor.black.cgColor
        layer8.fillColor = UIColor.black.cgColor
        view.layer.addSublayer(layer8)
        
        
        //鼻子
        let nose = UIBezierPath()
        nose.move(to: CGPoint(x: 185, y: 211))
        nose.addQuadCurve(to: CGPoint(x: 193, y: 211), controlPoint: CGPoint(x: 189, y: 212))
        let layer9 = CAShapeLayer()
        layer9.path = nose.cgPath
        layer9.lineWidth = 3
        layer9.strokeColor = UIColor.black.cgColor
        layer9.fillColor = UIColor.black.cgColor
        view.layer.addSublayer(layer9)
        
        //眼睛
        let aDegree = CGFloat.pi / 180
        let eye1 = UIBezierPath(arcCenter: CGPoint(x: 147, y:  183 ), radius: 15, startAngle: aDegree * 0, endAngle: aDegree * 360, clockwise: true)
        let layer10 = CAShapeLayer()
        layer10.path = eye1.cgPath
        layer10.lineWidth = 3
        layer10.strokeColor = UIColor.black.cgColor
        layer10.fillColor = UIColor.black.cgColor
        view.layer.addSublayer(layer10)
        
        //眼球
        let eyeIn1 = UIBezierPath(arcCenter: CGPoint(x: 152, y:  176 ), radius: 7, startAngle: aDegree * 0, endAngle: aDegree * 360, clockwise: true)
        let layer11 = CAShapeLayer()
        layer11.path = eyeIn1.cgPath
        layer11.lineWidth = 3
        layer11.strokeColor = UIColor.black.cgColor
        layer11.fillColor = UIColor.white.cgColor
        view.layer.addSublayer(layer11)
        
        //眼球2
        let eyeIn2 = UIBezierPath(arcCenter: CGPoint(x: 141, y:  194 ), radius: 5, startAngle: aDegree * 188, endAngle: aDegree * 390, clockwise: true)
        eyeIn2.close()
        let layer12 = CAShapeLayer()
        layer12.path = eyeIn2.cgPath
        layer12.lineWidth = 3
        layer12.strokeColor = UIColor.black.cgColor
        layer12.fillColor = UIColor.red.cgColor
        view.layer.addSublayer(layer12)
        
        //眼睛2
        let eye2 = UIBezierPath(arcCenter: CGPoint(x: 241, y:  204 ), radius: 15, startAngle: aDegree * 0, endAngle: aDegree * 360, clockwise: true)
        let layer13 = CAShapeLayer()
        layer13.path = eye2.cgPath
        layer13.lineWidth = 3
        layer13.strokeColor = UIColor.black.cgColor
        layer13.fillColor = UIColor.black.cgColor
        view.layer.addSublayer(layer13)
        
        //眼球3
        let eyeIn3 = UIBezierPath(arcCenter: CGPoint(x: 239, y:  199 ), radius: 7, startAngle: aDegree * 0, endAngle: aDegree * 360, clockwise: true)
        let layer14 = CAShapeLayer()
        layer14.path = eyeIn3.cgPath
        layer14.lineWidth = 3
        layer14.strokeColor = UIColor.black.cgColor
        layer14.fillColor = UIColor.white.cgColor
        view.layer.addSublayer(layer14)
        
        //眼球4
        let eyeIn4 = UIBezierPath(arcCenter: CGPoint(x: 243, y:  216 ), radius: 5, startAngle: aDegree * 160, endAngle: aDegree * 383, clockwise: true)
        eyeIn4.close()
        let layer15 = CAShapeLayer()
        layer15.path = eyeIn4.cgPath
        layer15.lineWidth = 3
        layer15.strokeColor = UIColor.black.cgColor
        layer15.fillColor = UIColor.red.cgColor
        view.layer.addSublayer(layer15)

        //臉頰
        let face = UIBezierPath(arcCenter: CGPoint(x: 113, y:  223 ), radius: 15, startAngle: aDegree * 210, endAngle: aDegree * 110, clockwise: true)
        face.close()
        let layer16 = CAShapeLayer()
        layer16.path = face.cgPath
        layer16.lineWidth = 3
        layer16.strokeColor = UIColor.black.cgColor
        layer16.fillColor = UIColor.red.cgColor
        view.layer.addSublayer(layer16)
        
        //臉頰2
        let face2 = UIBezierPath(arcCenter: CGPoint(x: 261, y:  252 ), radius: 15, startAngle: aDegree * 117, endAngle: aDegree * 339, clockwise: true)
        face2.addQuadCurve(to: CGPoint(x: 254, y: 267), controlPoint: CGPoint(x: 270, y: 263))
        let layer17 = CAShapeLayer()
        layer17.path = face2.cgPath
        layer17.lineWidth = 3
        layer17.strokeColor = UIColor.black.cgColor
        layer17.fillColor = UIColor.red.cgColor
        view.layer.addSublayer(layer17)
        
        //嘴巴
        let month = UIBezierPath()
        month.move(to: CGPoint(x: 161, y: 224))
        month.addQuadCurve(to: CGPoint(x: 190, y: 227), controlPoint: CGPoint(x: 172, y: 230))
        month.addQuadCurve(to: CGPoint(x: 210, y: 236), controlPoint: CGPoint(x: 197, y: 238))
        month.move(to: CGPoint(x: 164, y: 224))
        month.addQuadCurve(to: CGPoint(x: 168, y: 245), controlPoint: CGPoint(x: 172, y: 230))
        month.move(to: CGPoint(x: 164, y: 224))
        month.addQuadCurve(to: CGPoint(x: 169, y: 246), controlPoint: CGPoint(x: 172, y: 230))
        month.addQuadCurve(to: CGPoint(x: 194, y: 250), controlPoint: CGPoint(x: 181, y: 235))
        month.addLine(to: CGPoint(x: 203, y: 236))
        let layer18 = CAShapeLayer()
        layer18.path = month.cgPath
        layer18.lineWidth = 2
        layer18.strokeColor = UIColor.black.cgColor
        layer18.fillColor = UIColor.black.cgColor
        view.layer.addSublayer(layer18)
        //嘴巴2
        let month1 = UIBezierPath()
        month1.move(to: CGPoint(x: 169, y: 246))
        month1.addQuadCurve(to: CGPoint(x: 195, y: 249), controlPoint: CGPoint(x: 181, y: 230))
        month1.move(to: CGPoint(x: 169, y: 246))
        month1.addQuadCurve(to: CGPoint(x: 195, y: 249), controlPoint: CGPoint(x: 174, y: 290))
        let layer19 = CAShapeLayer()
        layer19.path = month1.cgPath
        layer19.lineWidth = 2
        layer19.strokeColor = UIColor.black.cgColor
        layer19.fillColor = UIColor(red: 192/255, green: 33/255, blue: 38/255, alpha: 1).cgColor
        view.layer.addSublayer(layer19)
        
        //耳朵
        let ear = UIBezierPath()
        ear.move(to: CGPoint(x: 93, y: 98))
        ear.addQuadCurve(to: CGPoint(x: 103, y: 53), controlPoint: CGPoint(x: 61, y: 27))
        ear.close()
        ear.move(to: CGPoint(x: 337, y: 99))
        ear.addQuadCurve(to: CGPoint(x: 327, y: 146), controlPoint: CGPoint(x: 410, y: 63))
        ear.close()
        let layer20 = CAShapeLayer()
        layer20.path = ear.cgPath
        layer20.lineWidth = 2
        layer20.strokeColor = UIColor.black.cgColor
        layer20.fillColor = UIColor.black.cgColor
        view.layer.addSublayer(layer20)
        
        
        
        


        
        return view
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
    }
    
}

struct ContentView: View {
    var body: some View {
        DrawView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
