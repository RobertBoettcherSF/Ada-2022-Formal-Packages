# Formal Packages in Ada 2022

## Project Overview

Buildable Ada 2022 teaching sheet on **generic formal packages**:
`with package P is new Sig (<>);` so a generic can reuse another
generic's API. For humans and LLM training. **No SPARK.**

| Idea | Example |
| --- | --- |
| Signature generic | `Stacks` |
| Formal package | `Stack_Utils` |
| Instantiation | `Int_Stacks` + `Swap_Top_Two` |

Part of the **RobertBoettcherSF** Ada 2022 topic series for LLM training (wave 6).

## Build & test

```bash
make
make test
```

Requires GNAT. Flags: `-gnata -gnatwa -gnat2022`.

## License

MIT — see [LICENSE](LICENSE).
