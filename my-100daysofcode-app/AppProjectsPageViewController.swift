//
//  AppProjectsPageViewController.swift
//  my-100daysofcode-app
//
//  Created by Marvin Messenzehl on 25.04.17.
//  Copyright © 2017 Marvin Messenzehl. All rights reserved.
//

import UIKit

class AppProjectsPageViewController: UIPageViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataSource = self
        
        
        if let firstViewController = orderedViewControllers.first {
            setViewControllers([firstViewController],
                               direction: .forward,
                               animated: true,
                               completion: nil)
        }
        
    }
    
    
    
    private(set) lazy var orderedViewControllers: [UIViewController] = {
        return [self.newProjectViewController(subname: "AppProjectOne"),
                self.newProjectViewController(subname: "AppProjectTwo"),
                self.newProjectViewController(subname: "AppProjectThree"),
                self.newProjectViewController(subname: "AppProjectFour"),
                self.newProjectViewController(subname: "AppProjectFive"),
                self.newProjectViewController(subname: "AppProjectSix"),
                self.newProjectViewController(subname: "AppProjectSeven"),
                self.newProjectViewController(subname: "AppProjectEight"),
                self.newProjectViewController(subname: "AppProjectNine"),
                self.newProjectViewController(subname: "AppProjectTen")]
    }()
    
    private func newProjectViewController(subname: String) -> UIViewController {
        return UIStoryboard(name: "Main", bundle: nil) .
            instantiateViewController(withIdentifier: "\(subname)ViewController")
    }
    
    
}






// MARK: UIPageViewControllerDataSource

extension AppProjectsPageViewController: UIPageViewControllerDataSource {
    
    func pageViewController(_ pageViewController: UIPageViewController,
                            viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        guard let viewControllerIndex = orderedViewControllers.index(of: viewController) else {
            return nil
        }
        
        let previousIndex = viewControllerIndex - 1
        
        // User is on the first view controller and swiped left to loop to
        // the last view controller.
        guard previousIndex >= 0 else {
            return orderedViewControllers.last
        }
        
        guard orderedViewControllers.count > previousIndex else {
            return nil
        }
        
        return orderedViewControllers[previousIndex]
    }
    
    
    
    
    
    
    
    
    func pageViewController(_ pageViewController: UIPageViewController,
                            viewControllerAfter viewController: UIViewController) -> UIViewController? {
        
        guard let viewControllerIndex = orderedViewControllers.index(of: viewController) else {
            return nil
        }
        
        let nextIndex = viewControllerIndex + 1
        let orderedViewControllersCount = orderedViewControllers.count
        
        // User is on the last view controller and swiped right to loop to
        // the first view controller.
        guard orderedViewControllersCount != nextIndex else {
            return orderedViewControllers.first
        }
        
        guard orderedViewControllersCount > nextIndex else {
            return nil
        }
        
        return orderedViewControllers[nextIndex]
    }
    
    
    
    
    
    func presentationCountForPageViewController(pageViewController: UIPageViewController) -> Int {
        return orderedViewControllers.count
    }
    
    func presentationIndexForPageViewController(pageViewController: UIPageViewController) -> Int {
        guard let firstViewController = viewControllers?.first,
            let firstViewControllerIndex = orderedViewControllers.index(of: firstViewController) else {
                return 0
        }
        
        return firstViewControllerIndex
    }
}
