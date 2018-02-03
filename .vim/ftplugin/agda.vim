" Superscripts
imap <buffer> ^0 ⁰
imap <buffer> ^1 ¹
imap <buffer> ^2 ²
imap <buffer> ^3 ³
imap <buffer> ^4 ⁴
imap <buffer> ^5 ⁵
imap <buffer> ^6 ⁶
imap <buffer> ^7 ⁷
imap <buffer> ^8 ⁸
imap <buffer> ^9 ⁹
imap <buffer> ^+ ⁺
imap <buffer> ^- ⁻
imap <buffer> ^= ⁼
imap <buffer> ^( ⁽
imap <buffer> ^) ⁾
imap <buffer> ^n ⁿ

" Subscripts
imap <buffer> \_0 ₀
imap <buffer> \_1 ₁
imap <buffer> \_2 ₂
imap <buffer> \_3 ₃
imap <buffer> \_4 ₄
imap <buffer> \_5 ₅
imap <buffer> \_6 ₆
imap <buffer> \_7 ₇
imap <buffer> \_8 ₈
imap <buffer> \_9 ₉
imap <buffer> \_+ ₊
imap <buffer> \_- ₋
imap <buffer> \_= ₌
imap <buffer> \_( ₍
imap <buffer> \_) ₎

" Arrows
imap <buffer> -> →
imap <buffer> <-- ←
imap <buffer> <--> ↔
imap <buffer> ==> ⇒
imap <buffer> <== ⇐
imap <buffer> <==> ⇔

" Symbols from mathematics and logic, LaTeX style
imap <buffer> \forall ∀
imap <buffer> \exists ∃
imap <buffer> \in ∈
imap <buffer> \ni ∋
imap <buffer> \empty ∅
imap <buffer> \prod ∏
imap <buffer> \sum ∑
imap <buffer> \le ≤
imap <buffer> \ge ≥
imap <buffer> \pm ±
imap <buffer> \subset ⊂
imap <buffer> \subseteq ⊆
imap <buffer> \supset ⊃
imap <buffer> \supseteq ⊇
imap <buffer> \setminus ∖
imap <buffer> \cap ∩
imap <buffer> \cup ∪
imap <buffer> \int ∫
imap <buffer> \therefore ∴
imap <buffer> \qed ∎
imap <buffer> \1 𝟙
imap <buffer> \N ℕ
imap <buffer> \Z ℤ
imap <buffer> \C ℂ
imap <buffer> \Q ℚ
imap <buffer> \R ℝ
imap <buffer> \E 𝔼
imap <buffer> \F 𝔽
imap <buffer> \to →
imap <buffer> \mapsto ↦
imap <buffer> \infty ∞
imap <buffer> \cong ≅
imap <buffer> \:= ≔
imap <buffer> \=: ≕
imap <buffer> \ne ≠
imap <buffer> \approx ≈
imap <buffer> \perp ⊥
imap <buffer> \not ̷
imap <buffer> \ldots …
imap <buffer> \cdots ⋯
imap <buffer> \cdot ⋅
imap <buffer> \circ ◦
imap <buffer> \times ×
imap <buffer> \oplus ⊕
imap <buffer> \langle ⟨
imap <buffer> \rangle ⟩

" Greek alphabet...
imap <buffer> \alpha α
imap <buffer> \beta β
imap <buffer> \gamma γ
imap <buffer> \delta δ
imap <buffer> \epsilon ε
imap <buffer> \zeta ζ
imap <buffer> \nu η
imap <buffer> \theta θ
imap <buffer> \iota ι
imap <buffer> \kappa κ
imap <buffer> \lambda λ
imap <buffer> \mu μ
imap <buffer> \nu ν
imap <buffer> \xi ξ
imap <buffer> \omicron ο
imap <buffer> \pi π
imap <buffer> \rho ρ
imap <buffer> \stigma ς
imap <buffer> \sigma σ
imap <buffer> \tau τ
imap <buffer> \upsilon υ
imap <buffer> \phi ϕ
imap <buffer> \varphi φ
imap <buffer> \chi χ
imap <buffer> \psi ψ
imap <buffer> \omega ω

imap <buffer> \Alpha Α
imap <buffer> \Beta Β
imap <buffer> \Gamma Γ
imap <buffer> \Delta Δ
imap <buffer> \Epsilon Ε
imap <buffer> \Zeta Ζ
imap <buffer> \Nu Η
imap <buffer> \Theta Θ
imap <buffer> \Iota Ι
imap <buffer> \Kappa Κ
imap <buffer> \Lambda Λ
imap <buffer> \Mu Μ
imap <buffer> \Nu Ν
imap <buffer> \Xi Ξ
imap <buffer> \Omicron Ο
imap <buffer> \Pi Π
imap <buffer> \Rho Ρ
imap <buffer> \Sigma Σ
imap <buffer> \Tau Τ
imap <buffer> \Upsilon Υ
imap <buffer> \Phi Φ
imap <buffer> \Chi Χ
imap <buffer> \Psi Ψ
imap <buffer> \Omega Ω

nnoremap <f9> :!agda --vim %<cr>
set expandtab
set ts=2
set sw=2
set sts=2


" Handy binds
nnoremap <leader>h /{![^!]*!}<cr>3l:nohl<cr>
nnoremap <leader>H F{?{![^!]*!}<cr>3l:nohl<cr>
nnoremap <leader>/ /?<cr>:nohl<cr>
nnoremap <leader>? ??<cr>:nohl<cr>
imap <buffer> \B 𝔹

nnoremap <leader>ic o...<space>\|<space>c<space>=<space>{! c !}<esc>3h:Reload<cr>:call MakeCase()<cr>


" My own imaps, because <leader> is annoying

imap <buffer> land ∧
imap <buffer> lor ∨
imap <buffer> dju ⊎

" Arrows
imap <buffer> to<space> →<space>
iabbrev limp ⇒

iabbrev <buffer> forall ∀
iabbrev <buffer> setminus ∖
imap <buffer> <leader>nat ℕ
iabbrev <buffer> equiv ≡

" Greek alphabet...
iabbrev <buffer> alpha α
iabbrev <buffer> beta β
iabbrev <buffer> gamma γ
iabbrev <buffer> delta δ
iabbrev <buffer> epsilon ε

iabbrev <buffer> Alpha Α
iabbrev <buffer> Beta Β
iabbrev <buffer> Gamma Γ
iabbrev <buffer> Delta Δ
iabbrev <buffer> Epsilon Ε
iabbrev <buffer> Phi Φ
iabbrev <buffer> Psi Ψ

imap <buffer> tst ⊢
iabbrev <buffer> Gamma1 Γ₁
iabbrev <buffer> Gamma2 Γ₂
iabbrev <buffer> Gamma3 Γ₃




noreabbrev builtinbool open import Agda.Builtin.Bool
noreabbrev builtinequality open import Agda.Builtin.Equality
noreabbrev builtinlist open import Agda.Builtin.List
noreabbrev builtinnat open import Agda.Builtin.Nat renaming (Nat to ℕ)
noreabbrev builtinstring open import Agda.Builtin.String
