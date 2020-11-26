nnoremap <f1> :set ft=agda<cr>
nnoremap <f2> :imapclear <buffer><cr>
nnoremap <buffer><f11> :w<cr> :!xelatex -shell-escape %<cr>
nnoremap <C-b> 0yf}o<esc>p:s/begin/end/<cr>:nohl<cr>

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
imap <buffer> <\| ◁
imap <buffer> \|> ▷

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
imap <buffer> \zero 𝟘
imap <buffer> \one 𝟙
imap <buffer> \two 𝟚
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
imap <buffer> \lciel ⌈
imap <buffer> \rciel ⌉
imap <buffer> \lfloor ⌊
imap <buffer> \rfloor ⌋


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


imap <buffer> \mid ∣
imap <buffer> \norm ‖
imap <buffer> \qeq ≟
imap <buffer> \bul •
imap <buffer> \bcirc ●

nnoremap <f9> :!agda --vim %<cr>
set expandtab
set ts=2
set sw=2
set sts=2


" Handy binds
nnoremap <leader>h /{![^!]*!}<cr>3l:nohl<cr>
nnoremap <leader>H ?{![^!]*!}<cr>3l:nohl<cr>
nnoremap <leader>/ /?<cr>:nohl<cr>
nnoremap <leader>? ??<cr>:nohl<cr>
nnoremap <leader>f 0yWo<esc>pA
nnoremap <leader>F 0y2Wo<esc>pA

nnoremap <leader>ic o...<space>\|<space>c<space>=<space>{! c !}<esc>3h:Reload<cr>:call MakeCase()<cr>
nnoremap <leader>i2c o...<space>\|<space>c<space>\|<space>d<space>=<space>{! c d !}<esc>3h:Reload<cr>:call MakeCase()<cr>
nnoremap <leader>. 0R...<esc>lvt\|r<space>f\|

vnoremap <leader>= :Tabularize /=<cr>
vnoremap <leader>; :Tabularize /:<cr>
vnoremap <leader>- :Tabularize /→<cr>


imap <leader>div ÷

" My own imaps, because <leader> is annoying

imap <buffer> limp ⇒
imap <buffer> land ∧
imap <buffer> lor ∨
imap <buffer> dju ⊎
imap <buffer> approx ≈

imap <buffer> \lw ⦃
imap <buffer> \rw ⦄
imap <buffer> \la ⟨
imap <buffer> \ra ⟩
imap <buffer> \sm ∖
imap <buffer> \B 𝔹
imap <buffer> \su ⊔

" Arrows
imap <buffer> to<space> →<space>
imap <buffer> limp ⇒

imap <buffer> <leader>nat ℕ

imap <buffer> forall ∀
imap <buffer> exists ∃
imap <buffer> setminus ∖
imap <buffer> posnat ℕ⁺
imap <buffer> equiv ≡
imap <buffer> lnot ¬

" Greek alphabet...
imap <buffer> alpha α
imap <buffer> beta β
imap <buffer> gamma γ
imap <buffer> delta δ
imap <buffer> epsilon ε
imap <buffer> lambda λ
imap <buffer> omega ω

imap <buffer> Alpha Α
imap <buffer> Beta Β
imap <buffer> Gamma Γ
imap <buffer> Delta Δ
imap <buffer> Epsilon Ε
imap <buffer> Omega Ω
imap <buffer> Phi Φ
imap <buffer> Psi Ψ

imap <buffer> tst ⊢
imap <buffer> tft ⊩
imap <buffer> tnt ⊩̷
imap <buffer> tfe ⊨
imap <buffer> tne ⊨̷

imap <buffer> Gamma1 Γ₁
imap <buffer> Gamma2 Γ₂
imap <buffer> Gamma3 Γ₃

imap <buffer> \reduces ⊃
imap <buffer> reduces ⊃

imap <buffer> \sprec ≺
imap <buffer> \succ ≽
imap <buffer> \ssucc ≻

imap <buffer> \pref ⊑

imap <buffer> \guil «
imap <buffer> \guir »

imap <buffer> \incl ↪

imap <buffer> \tup ▲
imap <buffer> \tdown ▼

imap <buffer> \?? ⁇
imap <buffer> \sq □

noreabbrev builtinbool open import Agda.Builtin.Bool
noreabbrev builtinequality open import Agda.Builtin.Equality
noreabbrev builtinlist open import Agda.Builtin.List
noreabbrev builtinnat open import Agda.Builtin.Nat renaming (Nat to ℕ)
noreabbrev builtinsigma open import Agda.Builtin.Sigma
noreabbrev builtinstring open import Agda.Builtin.String
