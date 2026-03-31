.PHONY: build clean

build_resume:
	docker run --rm -v "$(PWD):/workdir" -w /workdir ghcr.io/xu-cheng/texlive-full:latest latexmk -pdf -cd resume/resume.tex
	@echo "✅ Resume built successfully! Check resume/resume.pdf"

clean:
	rm -f resume/*.aux resume/*.fdb_latexmk resume/*.fls resume/*.log resume/*.out resume/*.synctex.gz
	@echo "🧹 Cleaned up temporary LaTeX files."