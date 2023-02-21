module.exports = {
    plugins: {
        'postcss-import': {},
        tailwindcss: {
            // tailwind config goes here
            content: ["./app/**/*.{html,js}"], // 👈 this is important 
        },
        autoprefixer: {},
    }
}