//
//  M9Editor.swift
//  M9-HTML-Editor
//
//  Created by Hardik on 26/01/16.
//  Copyright © 2016 Hardik. All rights reserved.
//

import Cocoa
import WebKit

class M9Editor: NSView {

    
    var webView:WebView!

    override init(frame: CGRect) {
        super.init(frame: frame)
        xibSetup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        xibSetup()
    }
    

    func setContent(htmlString:String)
    {
        
        let functionCall="setContent('\(htmlString)')"
        webView.stringByEvaluatingJavaScriptFromString(functionCall);
    }
    func getContent()->String
    {
        let htmlString=webView.stringByEvaluatingJavaScriptFromString("getContent()");
        return htmlString;
    }

    func xibSetup()
    {
        
        webView=WebView(frame:self.bounds);
        
        let urlStr=NSBundle.mainBundle().pathForResource("package/main", ofType: "html")
        let url=NSURL(string: urlStr!);
        webView.mainFrame.loadRequest(NSURLRequest(URL: url!))
        addSubview(webView);
        

        
        
    }
    
}
