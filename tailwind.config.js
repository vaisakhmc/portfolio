/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    "./src/**/*.{html,ts}",
  ],
  theme: {
    extend: {
      colors: {
        primary: '#0070f3',
        background: '#0a0a0a',
        accent: '#ffffff',
      },
      fontFamily: {
        sans: ['Inter', 'sans-serif'],
      }
    },
  },
  plugins: [],
}
