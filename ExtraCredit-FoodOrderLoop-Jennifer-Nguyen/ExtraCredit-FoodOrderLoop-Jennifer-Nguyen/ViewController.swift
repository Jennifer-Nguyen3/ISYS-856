//
//  ViewController.swift
//  ExtraCredit-FoodOrderLoop-Jennifer-Nguyen
//
//  Created by Jennifer Nguyen on 4/12/20.
//  Copyright © 2020 Jennifer Nguyen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var foodImageView: UIImageView!
    
    @IBOutlet weak var foodNamePriceLabel: UILabel!
    
    
    @IBOutlet weak var foodOrderInCart: UITextView!
    
    let foodImageArray = ["chicken", "hamburger", "noodle", "pasta", "pizza", "salad", "steak"]
    
    let foodNameArray = ["Roasted Chicken", "Classic Burger", "Chicken Noodle Soup", "Bow-Tie Pasta", "Pepperoni Pizza", "Italian Salad", "Grilled Steak"]
        
    let foodPriceArray = [13.99, 13.99, 11.99, 12.99, 11.99, 10.99, 15.99]

    var foodIndex = 0
    
    var addedFoodNameArray: [String] = []
    
    var addedFoodPriceArray: [Double] = []
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        foodImageView.image = UIImage(named: foodImageArray[foodIndex])
        
        foodNamePriceLabel.text = "\(foodNameArray[foodIndex]) : $ \(foodPriceArray[foodIndex])"
        
        foodOrderInCart.text = "Food Order in Your Cart:"
        
    }
    
    @IBAction func nextDishClicked(_ sender: UIButton) {
        
        foodIndex += 1
        if foodIndex == foodImageArray.count{
            foodIndex = 0
    }
    
    foodImageView.image = UIImage(named: foodImageArray[foodIndex])
    
    foodNamePriceLabel.text = "\(foodNameArray[foodIndex]) : $ \(foodPriceArray[foodIndex])"
    
    }
    
    @IBAction func addToCartClicked(_ sender: UIButton) {
        var totalCost = 0.0
        var allFoodAdd = ""
        
        foodImageView.tag = foodIndex

        addedFoodNameArray.append(foodNameArray[foodImageView.tag])

        addedFoodPriceArray.append(foodPriceArray[foodImageView.tag])

        for count in 0...addedFoodNameArray.count-1{
            allFoodAdd = allFoodAdd + "\n \(addedFoodNameArray[count]) : $ \(addedFoodPriceArray[count])"
            totalCost = totalCost + addedFoodPriceArray[count]
    }
    
        print(allFoodAdd)
        print(totalCost)

        foodOrderInCart.text = "Food Order in Your Cart: \n\(allFoodAdd) \n\n Total Cost: \(totalCost)"
    }
        
}


