//
//  ViewController.swift
//  Calculator_Snapkit
//
//  Created by user on 23.12.2021.
//

import UIKit
import SnapKit


class ViewController: UIViewController {
    
    private var zeroButton = UIButton()
    private var fractionButton = UIButton()
    private var resultButton = UIButton()
    private var oneButton = UIButton()
    private var twoButton = UIButton()
    private var threeButton = UIButton()
    private var plusButton = UIButton()
    private var fourButton = UIButton()
    private var fiveButton = UIButton()
    private var sixButton = UIButton()
    private var minusButton = UIButton()
    private var sevenButton = UIButton()
    private var eightButton = UIButton()
    private var nineButton = UIButton()
    private var multiplicationButton = UIButton()
    private var cButton = UIButton()
    private var negativeButton = UIButton()
    private var percentButton = UIButton()
    private var divisionButton = UIButton()
    
    private var resultLabel = UILabel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .black
        
        zeroButton.backgroundColor = .darkGray
        zeroButton.setTitle("0", for: .normal)
        zeroButton.setTitleColor(.white, for: .normal)
        zeroButton.layer.cornerRadius = (view.frame.width * 0.1)
        zeroButton.titleLabel?.font = .systemFont(ofSize: 35)
        
        view.addSubview(zeroButton)
        zeroButton.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(view.frame.width * 0.04)
            make.bottom.equalToSuperview().offset(view.frame.width * (-0.12))
            make.height.equalTo(view.frame.width * 0.2)
            make.width.equalTo(view.frame.width * 0.44)
        }
        
        fractionButton.backgroundColor = .darkGray
        fractionButton.setTitle(",", for: .normal)
        fractionButton.setTitleColor(.white, for: .normal)
        fractionButton.layer.cornerRadius = (view.frame.width * 0.1)
        fractionButton.titleLabel?.font = .systemFont(ofSize: 35)
        
        view.addSubview(fractionButton)
        fractionButton.snp.makeConstraints { make in
            make.left.equalTo(zeroButton.snp.right).offset(view.frame.width * 0.04)
            make.bottom.equalToSuperview().offset(view.frame.width * (-0.12))
            make.height.width.equalTo(view.frame.width * 0.2)
        }
        
        resultButton.backgroundColor = .orange
        resultButton.setTitle("=", for: .normal)
        resultButton.setTitleColor(.white, for: .normal)
        resultButton.layer.cornerRadius = (view.frame.width * 0.1)
        resultButton.titleLabel?.font = .systemFont(ofSize: 35)
        
        view.addSubview(resultButton)
        resultButton.snp.makeConstraints { make in
            make.left.equalTo(fractionButton.snp.right).offset(view.frame.width * 0.04)
            make.bottom.equalToSuperview().offset(view.frame.width * (-0.12))
            make.height.width.equalTo(view.frame.width * 0.2)
        }
        
        oneButton.backgroundColor = .darkGray
        oneButton.setTitle("1", for: .normal)
        oneButton.setTitleColor(.white, for: .normal)
        oneButton.layer.cornerRadius = (view.frame.width * 0.1)
        oneButton.titleLabel?.font = .systemFont(ofSize: 35)
        
        view.addSubview(oneButton)
        oneButton.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(view.frame.width * 0.04)
            make.bottom.equalTo(zeroButton.snp.top).offset(view.frame.width * (-0.04))
            make.height.width.equalTo(view.frame.width * 0.2)
        }
        
        twoButton.backgroundColor = .darkGray
        twoButton.setTitle("2", for: .normal)
        twoButton.setTitleColor(.white, for: .normal)
        twoButton.layer.cornerRadius = (view.frame.width * 0.1)
        twoButton.titleLabel?.font = .systemFont(ofSize: 35)
        
        view.addSubview(twoButton)
        twoButton.snp.makeConstraints { make in
            make.left.equalTo(oneButton.snp.right).offset(view.frame.width * 0.04)
            make.bottom.equalTo(zeroButton.snp.top).offset(view.frame.width * (-0.04))
            make.height.width.equalTo(view.frame.width * 0.2)
        }
        
        threeButton.backgroundColor = .darkGray
        threeButton.setTitle("3", for: .normal)
        threeButton.setTitleColor(.white, for: .normal)
        threeButton.layer.cornerRadius = (view.frame.width * 0.1)
        threeButton.titleLabel?.font = .systemFont(ofSize: 35)
        
        view.addSubview(threeButton)
        threeButton.snp.makeConstraints { make in
            make.left.equalTo(twoButton.snp.right).offset(view.frame.width * 0.04)
            make.bottom.equalTo(fractionButton.snp.top).offset(view.frame.width * (-0.04))
            make.height.width.equalTo(view.frame.width * 0.2)
        }
        
        plusButton.backgroundColor = .orange
        plusButton.setTitle("+", for: .normal)
        plusButton.setTitleColor(.white, for: .normal)
        plusButton.layer.cornerRadius = (view.frame.width * 0.1)
        plusButton.titleLabel?.font = .systemFont(ofSize: 35)
        
        view.addSubview(plusButton)
        plusButton.snp.makeConstraints { make in
            make.left.equalTo(threeButton.snp.right).offset(view.frame.width * 0.04)
            make.bottom.equalTo(resultButton.snp.top).offset(view.frame.width * (-0.04))
            make.height.width.equalTo(view.frame.width * 0.2)
        }
        
        fourButton.backgroundColor = .darkGray
        fourButton.setTitle("4", for: .normal)
        fourButton.setTitleColor(.white, for: .normal)
        fourButton.layer.cornerRadius = (view.frame.width * 0.1)
        fourButton.titleLabel?.font = .systemFont(ofSize: 35)
        
        view.addSubview(fourButton)
        fourButton.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(view.frame.width * 0.04)
            make.bottom.equalTo(oneButton.snp.top).offset(view.frame.width * (-0.04))
            make.height.width.equalTo(view.frame.width * 0.2)
        }
        
        fiveButton.backgroundColor = .darkGray
        fiveButton.setTitle("5", for: .normal)
        fiveButton.setTitleColor(.white, for: .normal)
        fiveButton.layer.cornerRadius = (view.frame.width * 0.1)
        fiveButton.titleLabel?.font = .systemFont(ofSize: 35)
        
        view.addSubview(fiveButton)
        fiveButton.snp.makeConstraints { make in
            make.left.equalTo(fourButton.snp.right).offset(view.frame.width * 0.04)
            make.bottom.equalTo(twoButton.snp.top).offset(view.frame.width * (-0.04))
            make.height.width.equalTo(view.frame.width * 0.2)
        }
        
        sixButton.backgroundColor = .darkGray
        sixButton.setTitle("6", for: .normal)
        sixButton.setTitleColor(.white, for: .normal)
        sixButton.layer.cornerRadius = (view.frame.width * 0.1)
        sixButton.titleLabel?.font = .systemFont(ofSize: 35)
        
        view.addSubview(sixButton)
        sixButton.snp.makeConstraints { make in
            make.left.equalTo(fiveButton.snp.right).offset(view.frame.width * 0.04)
            make.bottom.equalTo(threeButton.snp.top).offset(view.frame.width * (-0.04))
            make.height.width.equalTo(view.frame.width * 0.2)
        }
        
        minusButton.backgroundColor = .orange
        minusButton.setTitle("﹣", for: .normal)
        minusButton.setTitleColor(.white, for: .normal)
        minusButton.layer.cornerRadius = (view.frame.width * 0.1)
        minusButton.titleLabel?.font = .systemFont(ofSize: 35)
        
        view.addSubview(minusButton)
        minusButton.snp.makeConstraints { make in
            make.left.equalTo(sixButton.snp.right).offset(view.frame.width * 0.04)
            make.bottom.equalTo(plusButton.snp.top).offset(view.frame.width * (-0.04))
            make.height.width.equalTo(view.frame.width * 0.2)
        }
        
        sevenButton.backgroundColor = .darkGray
        sevenButton.setTitle("7", for: .normal)
        sevenButton.setTitleColor(.white, for: .normal)
        sevenButton.layer.cornerRadius = (view.frame.width * 0.1)
        sevenButton.titleLabel?.font = .systemFont(ofSize: 35)
        
        view.addSubview(sevenButton)
        sevenButton.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(view.frame.width * 0.04)
            make.bottom.equalTo(fourButton.snp.top).offset(view.frame.width * (-0.04))
            make.height.width.equalTo(view.frame.width * 0.2)
        }
        
        eightButton.backgroundColor = .darkGray
        eightButton.setTitle("8", for: .normal)
        eightButton.setTitleColor(.white, for: .normal)
        eightButton.layer.cornerRadius = (view.frame.width * 0.1)
        eightButton.titleLabel?.font = .systemFont(ofSize: 35)
        
        view.addSubview(eightButton)
        eightButton.snp.makeConstraints { make in
            make.left.equalTo(sevenButton.snp.right).offset(view.frame.width * 0.04)
            make.bottom.equalTo(fourButton.snp.top).offset(view.frame.width * (-0.04))
            make.height.width.equalTo(view.frame.width * 0.2)
        }
        
        nineButton.backgroundColor = .darkGray
        nineButton.setTitle("9", for: .normal)
        nineButton.setTitleColor(.white, for: .normal)
        nineButton.layer.cornerRadius = (view.frame.width * 0.1)
        nineButton.titleLabel?.font = .systemFont(ofSize: 35)
        
        view.addSubview(nineButton)
        nineButton.snp.makeConstraints { make in
            make.left.equalTo(eightButton.snp.right).offset(view.frame.width * 0.04)
            make.bottom.equalTo(sixButton.snp.top).offset(view.frame.width * (-0.04))
            make.height.width.equalTo(view.frame.width * 0.2)
        }
        
        multiplicationButton.backgroundColor = .orange
        multiplicationButton.setTitle("✕", for: .normal)
        multiplicationButton.setTitleColor(.white, for: .normal)
        multiplicationButton.layer.cornerRadius = (view.frame.width * 0.1)
        multiplicationButton.titleLabel?.font = .systemFont(ofSize: 35)
        
        view.addSubview(multiplicationButton)
        multiplicationButton.snp.makeConstraints { make in
            make.left.equalTo(nineButton.snp.right).offset(view.frame.width * 0.04)
            make.bottom.equalTo(minusButton.snp.top).offset(view.frame.width * (-0.04))
            make.height.width.equalTo(view.frame.width * 0.2)
        }
        
        cButton.backgroundColor = .darkGray
        cButton.setTitle("C", for: .normal)
        cButton.setTitleColor(.white, for: .normal)
        cButton.layer.cornerRadius = (view.frame.width * 0.1)
        cButton.titleLabel?.font = .systemFont(ofSize: 35)
        
        view.addSubview(cButton)
        cButton.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(view.frame.width * 0.04)
            make.bottom.equalTo(sevenButton.snp.top).offset(view.frame.width * (-0.04))
            make.height.width.equalTo(view.frame.width * 0.2)
        }
        
        negativeButton.backgroundColor = .darkGray
        negativeButton.setTitle("+/-", for: .normal)
        negativeButton.setTitleColor(.white, for: .normal)
        negativeButton.layer.cornerRadius = (view.frame.width * 0.1)
        negativeButton.titleLabel?.font = .systemFont(ofSize: 30)
        
        view.addSubview(negativeButton)
        negativeButton.snp.makeConstraints { make in
            make.left.equalTo(cButton.snp.right).offset(view.frame.width * 0.04)
            make.bottom.equalTo(eightButton.snp.top).offset(view.frame.width * (-0.04))
            make.height.width.equalTo(view.frame.width * 0.2)
        }
        
        percentButton.backgroundColor = .darkGray
        percentButton.setTitle("%", for: .normal)
        percentButton.setTitleColor(.white, for: .normal)
        percentButton.layer.cornerRadius = (view.frame.width * 0.1)
        percentButton.titleLabel?.font = .systemFont(ofSize: 35)
        
        view.addSubview(percentButton)
        percentButton.snp.makeConstraints { make in
            make.left.equalTo(negativeButton.snp.right).offset(view.frame.width * 0.04)
            make.bottom.equalTo(nineButton.snp.top).offset(view.frame.width * (-0.04))
            make.height.width.equalTo(view.frame.width * 0.2)
        }
        
        divisionButton.backgroundColor = .orange
        divisionButton.setTitle("÷", for: .normal)
        divisionButton.setTitleColor(.white, for: .normal)
        divisionButton.layer.cornerRadius = (view.frame.width * 0.1)
        divisionButton.titleLabel?.font = .systemFont(ofSize: 35)
        
        view.addSubview(divisionButton)
        divisionButton.snp.makeConstraints { make in
            make.left.equalTo(percentButton.snp.right).offset(view.frame.width * 0.04)
            make.bottom.equalTo(multiplicationButton.snp.top).offset(view.frame.width * (-0.04))
            make.height.width.equalTo(view.frame.width * 0.2)
        }
        
        resultLabel.text = "0"
        resultLabel.textColor = .white
        resultLabel.font = .systemFont(ofSize: 70)
        resultLabel.textAlignment = .right
        
        view.addSubview(resultLabel)
        resultLabel.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(view.frame.width * 0.04)
            make.bottom.equalTo(cButton.snp.top).offset(view.frame.width * (-0.04))
            make.width.equalTo(view.frame.width * 0.92)
            make.height.equalTo(view.frame.width * 0.5)
        }
    }
}
