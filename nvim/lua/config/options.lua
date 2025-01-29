local options = {
  -- Gerais
  termguicolors = true, -- Habilitar cores de 24 bits
  mouse = "a", -- Habilitar o uso do mouse no Neovim
  clipboard = "unnamedplus", -- Compartilhar a área de transferência com o sistema
  encoding = "utf-8", -- Definir a codificação de arquivos para UTF-8
  fileencoding = "utf-8", -- Definir a codificação do arquivo para UTF-8
  history = 1000, -- Aumentar o histórico de comandos
  splitbelow = true, -- Abrir splits horizontais abaixo da janela atual
  splitright = true, -- Abrir splits verticais à direita da janela atual

  -- Interface
  number = true, -- Mostrar números das linhas
  relativenumber = true, -- Mostrar números relativos das linhas
  signcolumn = "no", -- Sempre mostrar a coluna de sinais
  showmode = true, -- Desabilitar o modo de exibição de "INSERT"
  showtabline = 0, -- Mostrar sempre a linha de abas
  cursorline = true, -- Destacar a linha atual
  scrolloff = 8, -- Manter 8 linhas visíveis acima e abaixo do cursor
  sidescrolloff = 8, -- Manter 8 colunas visíveis à esquerda e à direita do cursor
  wrap = false, -- Não quebrar as linhas de texto

  -- Indentação e Espaçamento
  expandtab = true, -- Converter tabs em espaços
  tabstop = 2, -- Número de espaços que uma tab ocupa
  shiftwidth = 2, -- Tamanho da indentação
  softtabstop = 2, -- Usar espaços ao invés de tabulação
  smartindent = true, -- Ativar indentação inteligente
  smartcase = true, -- Ativar busca com diferenciação de maiúsculas e minúsculas inteligente
  ignorecase = true, -- Ignorar maiúsculas/minúsculas em buscas

  -- Busca
  incsearch = true, -- Ativar busca incremental
  hlsearch = false, -- Destacar resultados da busca
  wrapscan = true, -- Buscar no final do arquivo e retornar ao início

  -- Desempenho
  updatetime = 300, -- Atrasar a atualização do cursor (diminui o uso da CPU)
  timeoutlen = 500, -- Tempo de espera para uma sequência de teclas mapeadas

  -- Undo
  undofile = false, -- Habilitar o undo persistente
  undodir = vim.fn.stdpath("config") .. "/undo", -- Definir diretório de undo

  -- Backup e Swap
  backup = false, -- Desabilitar o backup de arquivos
  swapfile = false, -- Desabilitar o arquivo swap
  writebackup = false, -- Desabilitar o backup ao salvar arquivos

  -- Ajustes do statusline
  laststatus = 2, -- Mostrar statusline sempre
  statusline = "%f %y %m %r %h %w [%L/%l] %c", -- Personalizar statusline

  -- Histórico e Comandos
  cmdheight = 1, -- Definir altura da linha de comando
  lazyredraw = true, -- Melhor desempenho ao desenhar a tela

  -- Visualizações de edição
  conceallevel = 0, -- Mostrar o texto oculto (para markdown, por exemplo)
  list = true, -- Exibir caracteres de controle como tabulação e espaços

  -- Números de linha
  numberwidth = 2, -- Largura das colunas de números

  -- Outras
  shortmess = vim.opt.shortmess + "c", -- Suprimir mensagens excessivas
}

-- Aplicando as opções
for k, v in pairs(options) do
  vim.opt[k] = v
end
