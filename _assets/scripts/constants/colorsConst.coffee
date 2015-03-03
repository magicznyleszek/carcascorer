angular.module('carcascorerApp').constant('colorsConst', do ->

    colors =
        black: 'hsl(0, 0%, 12%)'
        blue: 'hsl(212, 80%, 52%)'
        gray: 'hsl(60, 4%, 64%)'
        green: 'hsl(120, 64%, 32%)'
        red: 'hsl(4, 96%, 48%)'
        yellow: 'hsl(0, 0%, 50%)'

    return {
        colors: colors
    }

)
