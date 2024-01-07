Hi TopCoder.
Thank you for organizing the AI-driven challenge. It's truly a pleasure to showcase my AI skills and simultaneously acquire valuable insights in this competitive environment.

My solution is based on GitHub Repository  https://github.com/PromtEngineer/localGPT. All creds to 'PromtEngineer' for providing great baseline approach.

This solution leverages the LangChain framework, employing ChromaDb alongside HuggingFace Instruct Embeddings. The base model chosen is Llama-2-7b. In addition, I ingested data from the provided presentations and documents, incorporating the LangChain Loader for presentation files. Furthermore, I extracted page content from the Assets document. I manually created a links.txt file containing all online sources and utilized the LangChain UnstructuredHtmlLoader to parse them. Additionally, I integrated a custom Wikipedia Loader to retrieve TopCoder data from Wikipedia.

To reproduce it you need to run:
1) /Code/setup.sh - get data from dropbox
2) ./ingest.py - create embedding database.

I made a scripts to generate inferences for provision and final data (it should run without Docker):
./code/run_localGPT_provision.py
./code/run_localGPT_final.py
These scripts generate chat outputs (final_solution.csv, solution.csv) and put it to 'public_data' folder.

The solution folder contains copy of files from 'public_data' folder

To run solution via docker you need:
1) navigate to 'code' folder
2) run 'docker build .'
3) get created docker image_hash by running 'docker images'
4) run 'docker run <image_hash>'

Subsequently, you'll have the capability to query the chatbot through the console interface. Unfortunately, I haven't had the time to test the UI.

While I've successfully tested it on my personal Windows machine with CUDA and a MacBook Pro M1 Max (without Docker), there might be a need for adjustments to the Dockerfile to optimize performance in AWS.

I hope you find this solution interesting!

Best Regards,
Alexander Golikov (al_gol).