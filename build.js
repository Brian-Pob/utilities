const res = await Bun.build({
  entrypoints: ['./index.js'],
  outdir: './dist',
  sourcemap: "inline",
  minify: true,
})

if (!res.success) {
  console.error('❌ Build failed! ❌')
  for (const msg of res.logs) {
    console.error(msg)
  }
  process.exit(1)
}

console.log('✨ Build successful! ✨')