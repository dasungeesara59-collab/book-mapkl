import { defineConfig } from 'vite';

// https://vitejs.dev/config/
export default defineConfig({
  // Base path for GitHub Pages deployment
  // Using './' makes it work regardless of the repository name (prolok, viy, book-mapg, etc.)
  base: './',
  
  build: {
    outDir: 'dist',
    minify: 'terser',
    sourcemap: false,
  },
  
  server: {
    port: 3000,
    open: true
  }
});
