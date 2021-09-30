//
//  InfoViewController.swift
//  MyHabits
//
//  Created by Pavel Belov on 25.06.2021.
//

import UIKit

class InfoViewController: UIViewController {
    
    private let scroll = UIScrollView()
    
    private let conteiner: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.toAutoLayout()
        return view
    }()
    
    private let stackForLabel: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .leading
        stackView.distribution = .fill
        stackView.spacing = 12
        stackView.toAutoLayout()
        return stackView
    }()
    
    private let infoHeader: UILabel = {
        let label = UILabel()
        label.text = "Привычка за 21 день"
        label.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        label.toAutoLayout()
        return label
    }()
    
    private let advices: UILabel = {
        let label = UILabel()
        label.text = "Прохождение этапов, за которые за 21 день вырабатывается привычка, подчиняется следующему алгоритму:"
        label.font = UIFont.systemFont(ofSize: 17, weight: .regular)
        label.numberOfLines = 0
        label.toAutoLayout()
        return label
    }()
    
    private let firstAdvice: UILabel = {
        let label = UILabel()
        label.text = "1. Провести 1 день без обращения к старым привычкам, стараться вести себя так, как будто цель, загаданная в перспективу, находится на расстоянии шага."
        label.font = UIFont.systemFont(ofSize: 17, weight: .regular)
        label.numberOfLines = 0
        label.toAutoLayout()
        return label
    }()
    
    private let secondAdvice: UILabel = {
        let label = UILabel()
        label.text = "2. Выдержать 2 дня в прежнем состоянии самоконтроля."
        label.font = UIFont.systemFont(ofSize: 17, weight: .regular)
        label.numberOfLines = 0
        label.toAutoLayout()
        return label
    }()
    
    private let thirdAdvice: UILabel = {
        let label = UILabel()
        label.text = "3. Отметить в дневнике первую неделю изменений и подвести первые итоги — что оказалось тяжело, что — легче, с чем еще предстоит серьезно бороться."
        label.font = UIFont.systemFont(ofSize: 17, weight: .regular)
        label.numberOfLines = 0
        label.toAutoLayout()
        return label
    }()
    
    private let forthAdvice: UILabel = {
        let label = UILabel()
        label.text = "4. Поздравить себя с прохождением первого серьезного порога в 21 день. За это время отказ от дурных наклонностей уже примет форму осознанного преодоления и человек сможет больше работать в сторону принятия положительных качеств."
        label.font = UIFont.systemFont(ofSize: 17, weight: .regular)
        label.numberOfLines = 0
        label.toAutoLayout()
        return label
    }()
    
    private let fifthAdvice: UILabel = {
        let label = UILabel()
        label.text = "5. Держать планку 40 дней. Практикующий методику уже чувствует себя освободившимся от прошлого негатива и двигается в нужном направлении с хорошей динамикой."
        label.font = UIFont.systemFont(ofSize: 17, weight: .regular)
        label.numberOfLines = 0
        label.toAutoLayout()
        return label
    }()
    
    private let sixthAdvice: UILabel = {
        let label = UILabel()
        label.text = "6. На 90-й день соблюдения техники все лишнее из «прошлой жизни» перестает напоминать о себе, и человек, оглянувшись назад, осознает себя полностью обновившимся."
        label.font = UIFont.systemFont(ofSize: 17, weight: .regular)
        label.numberOfLines = 0
        label.toAutoLayout()
        return label
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Информация"
        self.view.backgroundColor = .white
        
        setupViews()
    }
    
    func setupViews() {
        
        scroll.toAutoLayout()
        
        view.addSubview(scroll)
        scroll.addSubview(conteiner)
        conteiner.addSubviews(infoHeader, stackForLabel)
        stackForLabel.addArrangedSubview(advices)
        stackForLabel.addArrangedSubview(firstAdvice)
        stackForLabel.addArrangedSubview(secondAdvice)
        stackForLabel.addArrangedSubview(thirdAdvice)
        stackForLabel.addArrangedSubview(forthAdvice)
        stackForLabel.addArrangedSubview(fifthAdvice)
        stackForLabel.addArrangedSubview(sixthAdvice)
        
        
        let constraints = [
            
            scroll.topAnchor.constraint(equalTo: view.topAnchor),
            scroll.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            scroll.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scroll.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            conteiner.topAnchor.constraint(equalTo: scroll.topAnchor),
            conteiner.bottomAnchor.constraint(equalTo: scroll.bottomAnchor),
            conteiner.leadingAnchor.constraint(equalTo: scroll.leadingAnchor),
            conteiner.trailingAnchor.constraint(equalTo: scroll.trailingAnchor),
            conteiner.widthAnchor.constraint(equalTo: scroll.widthAnchor),
            
            infoHeader.topAnchor.constraint(equalTo: conteiner.topAnchor, constant: 22),
            infoHeader.leadingAnchor.constraint(equalTo: conteiner.leadingAnchor, constant: sideInset),
            infoHeader.trailingAnchor.constraint(equalTo: conteiner.trailingAnchor, constant: -141),
            
            stackForLabel.topAnchor.constraint(equalTo: infoHeader.bottomAnchor, constant: sideInset),
            stackForLabel.leadingAnchor.constraint(equalTo: conteiner.leadingAnchor, constant: sideInset),
            stackForLabel.trailingAnchor.constraint(equalTo: conteiner.trailingAnchor, constant: -sideInset),
            stackForLabel.bottomAnchor.constraint(equalTo: conteiner.bottomAnchor, constant: -22)
        ]
        
        NSLayoutConstraint.activate(constraints)
    }
    
    private var sideInset: CGFloat { return 16 }
}

