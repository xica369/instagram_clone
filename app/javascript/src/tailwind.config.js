// tailwind.config.js
const defaultTheme = require('tailwindcss/defaultTheme')
const colors = require('tailwindcss/colors')

module.exports = {
  darkMode: 'media',
  theme: {
    extend: {
      fontFamily: {
        sans: ['Nunito', ...defaultTheme.fontFamily.sans],
      },
      borderRadius: {
        'none': '0',
        'sm': '0.125rem',
        DEFAULT: '0.25rem',
        DEFAULT: '4px',
        'md': '0.375rem',
        'lg': '0.5rem',
        'full': '9999px',
        'large': '12px',
        'large-20': '20px',
      },
      colors: {
        'cool-gray': colors.coolGray,
        'light-blue': colors.lightBlue,
        symplifica: {
          '100': '#FF5733'
        },
        teal: colors.teal,
        sy: {
          '100': '#1BEAE4',
          '200': '#7CFCF4',
          '300': '#424C5A',
        },
        success:{
          "100": '#13B954'
        },
        facebook: {
          '100': '#1877f2',
        },
        google: {
          '100': '#ea4335',
        },
        apple: {
          '100': '#a6b1b7',
        },
        rocket: {
          '100': '#EBF8FF',
          '200': '#BEE3F8',
          '300': '#90CDF4',
          '400': '#63B3ED',
          '500': '#4299E1',
          '600': '#3182CE',
          '700': '#2B6CB0',
          '800': '#2C5282',
          '900': '#2A4365',
        },
        "light-blue": colors.lightBlue,
      },
    },
  },
  plugins: [
    require('@tailwindcss/forms'),
  ]
}
