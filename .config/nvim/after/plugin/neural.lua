local env = vim.fn.expand('$HOME') .. '/.config/nvim/.env.lua'
dofile(env)

if vim.env.OPENAI_API_KEY == nil then
  print('Please set the OPENAI_API_KEY environment variable')
  return
end

local status_neural, neural = pcall(require, 'neural')
if not status_neural then
  return
end

neural.setup({
  mappings = {
    swift = '<C-n>', -- Context completion
    -- prompt = '<leader-n>', -- Open prompt
  },
  -- OpenAI settings
  open_ai = {
    temperature = 0.1,
    presence_penalty = 0.5,
    frequency_penalty = 0.5,
    max_tokens = 2048,
    context_lines = 16, -- Surrounding lines for swift completion
    api_key = vim.env.OPENAI_API_KEY,
  },
  -- Visual settings
  ui = {
    use_prompt = true, -- Use visual floating Input
    use_animated_sign = true, -- Use animated sign mark
    show_hl = true,
    show_icon = true,
    icon = '🗲', -- Prompt/Static sign icon
    icon_color = '#ffe030', -- Sign icon color
    hl_color = '#4D4839', -- Line highlighting on output
    prompt_border_color = '#E5C07B',
  },
})
