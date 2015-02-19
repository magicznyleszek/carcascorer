angular.module('galaxyApp').constant('colorsConst', do ->

    createColors = ->
        labels = ['red', 'black', 'blue']
        colors = []
        for color in labels
            colors.push({ label: color, taken: false })
        return colors

    return {
        colors: createColors()
    }
)
