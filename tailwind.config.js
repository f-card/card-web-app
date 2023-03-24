/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    "./dist/{*.html,*.js}",
    "./src/**/*.elm"
  ],
  theme: {
    extend: {},
  },
  plugins: [],
}
