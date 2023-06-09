# Article

Summary

@Metadata {
    @CallToAction(purpose: link, url: "https://github.com/gromb57/ios-wwdc23")
    @PageKind(sampleCode)
    
    @PageImage(
            purpose: card, 
            source: "swift-og", 
            alt: "Swift Logo")
}

## Overview

### Grid
@Row {
    @Column(size: 2) {
        First, you customize your sloth by picking its 
        ``AnimationView``. The power of your sloth influences
        its abilities and how well they cope in their environment. The app
        displays a picker view that showcases the available powers and
        previews your sloth for the selected power.
    }
    
    @Column {
        ![A screenshot of the power picker user interface with four powers displayed – ice, fire, wind, and lightning](swift-og)
    }
}

@Row {
    @Column {
        ![A screenshot of the sloth status user interface that indicates the the amount of sleep, fun, and exercise a given sloth is in need of.](swift-og)
    }
    
    @Column(size: 2) {
        Once you've customized your sloth, it's ready to ready to thrive.
        You'll find that sloths will happily munch on a leaf, but may not be as 
        receptive to working out. Use the activity picker to send some
        encouragement.
    }
}

### Tab

@TabNavigator {
    @Tab("English") {
        ![Two screenshots showing the Slothy app rendering with English language content. The first screenshot shows a sloth map and the second screenshot shows a sloth power picker.](swift-og)
    }
    
    @Tab("Chinese") {
        ![Two screenshots showing the Slothy app rendering with Chinese language content. The first screenshot shows a sloth map and the second screenshot shows a sloth power picker.](swift-og)
    }
    
    @Tab("Spanish") {
        ![Two screenshots showing the Slothy app rendering with Spanish language content. The first screenshot shows a sloth map and the second screenshot shows a sloth power picker.](swift-og)
    }
}

### Video
@Video(poster: "swift-og", source: "https://developer.apple.com/videos/play/wwdc2014/603", alt: "An animated video showing two screens in the Slothy app. The first screenshot shows a sloth map and the second screenshot shows a sloth power picker.")

### Links

@Links(visualStyle: detailedGrid) {
    - <doc:Article>
    - <doc:Article2>
}

@Links(visualStyle: list) {
    - <doc:Article>
    - <doc:Article2>
}

