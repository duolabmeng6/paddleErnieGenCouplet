import paddlehub as hub

module = hub.Module(name="ernie_gen_couplet")

test_texts = ["人增福寿年增岁", "风吹云乱天垂泪"]
results = module.generate(texts=test_texts, use_gpu=True, beam_width=5)
for result in results:
    print(result)
    for result in results:
        print(result)