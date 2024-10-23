# run app
    python3.11 app.py

# Test app
curl -X POST -H "Content-Type: application/json" -d '{"prompt": "Hello, how are you today?"}' 127.0.0.1:5000/chatbot


ibmcloud ce build create --name build-local-dockerfile5 \
                        --build-type local --size large \
                        --image us.icr.io/${SN_ICR_NAMESPACE}/myapp5 \
                        --registry-secret icr-secret
                        /


ibmcloud ce buildrun submit --name buildrun-local-dockerfile5 \
                            --build build-local-dockerfile5 \
                            --source .
                            /

ibmcloud ce buildrun get -n buildrun-local-dockerfile5

ibmcloud ce application create --name demo4 \
                            --image us.icr.io/${SN_ICR_NAMESPACE}/myapp5  \
                            --registry-secret icr-secret --es 2G \
                            --port 7860 --minscale 1