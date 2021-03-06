<!--
 ~ Copyright (c) 2005-2010, WSO2 Inc. (http://www.wso2.org) All Rights Reserved.
 ~
 ~ WSO2 Inc. licenses this file to you under the Apache License,
 ~ Version 2.0 (the "License"); you may not use this file except
 ~ in compliance with the License.
 ~ You may obtain a copy of the License at
 ~
 ~    http://www.apache.org/licenses/LICENSE-2.0
 ~
 ~ Unless required by applicable law or agreed to in writing,
 ~ software distributed under the License is distributed on an
 ~ "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 ~ KIND, either express or implied.  See the License for the
 ~ specific language governing permissions and limitations
 ~ under the License.
 -->
<%@ page import="org.wso2.carbon.mediator.clone.CloneMediator" %>
<%@ page import="org.wso2.carbon.mediator.service.ui.Mediator" %>
<%@ page import="org.wso2.carbon.mediator.target.TargetMediator" %>
<%@ page import="org.wso2.carbon.sequences.ui.util.SequenceEditorHelper" %>
<%--
~  Copyright (c) 2008, WSO2 Inc. (http://www.wso2.org) All Rights Reserved.
~
~  Licensed under the Apache License, Version 2.0 (the "License");
~  you may not use this file except in compliance with the License.
~  You may obtain a copy of the License at
~
~        http://www.apache.org/licenses/LICENSE-2.0
~
~  Unless required by applicable law or agreed to in writing, software
~  distributed under the License is distributed on an "AS IS" BASIS,
~  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
~  See the License for the specific language governing permissions and
~  limitations under the License.
--%>

<%
    Mediator mediator = SequenceEditorHelper.getEditingMediator(request, session);
    if (!(mediator instanceof CloneMediator)) {
        // todo : proper error handling
        throw new RuntimeException("Unable to edit the mediator");
    }
    CloneMediator cloneMediator = (CloneMediator) mediator;
    cloneMediator.addChild(new TargetMediator());
%>

<script type="text/javascript">
    document.location.href = "../sequences/design_sequence.jsp?ordinal=1";
</script>

